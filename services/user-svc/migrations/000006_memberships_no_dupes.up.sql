-- remove duplicates
WITH by_user_and_org_with_rn AS (
    SELECT
        user_id,
        organization_id,
        ROW_NUMBER() OVER(PARTITION BY user_id, organization_id ORDER BY id) AS rn
    FROM memberships
)
DELETE FROM memberships
WHERE (user_id, organization_id) IN (
    SELECT user_id, organization_id
    FROM by_user_and_org_with_rn
    WHERE rn > 1
);

-- prevent duplicates
ALTER TABLE memberships
ADD CONSTRAINT memberships_user_id_organization_id_unique
UNIQUE (user_id, organization_id);
