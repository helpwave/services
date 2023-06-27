function(ctx)
  {
    userId: ctx.identity.id,
    email: ctx.identity.traits.email,
    nickname: ctx.identity.traits.nickname,
    name: ctx.identity.name,
  }
