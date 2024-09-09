import * as grpcWeb from 'grpc-web';

import * as services_tasks_svc_v1_task_svc_pb from '../../../services/tasks_svc/v1/task_svc_pb'; // proto import: "services/tasks_svc/v1/task_svc.proto"


export class TaskServiceClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createTask(
    request: services_tasks_svc_v1_task_svc_pb.CreateTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_task_svc_pb.CreateTaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_task_svc_pb.CreateTaskResponse>;

  updateTask(
    request: services_tasks_svc_v1_task_svc_pb.UpdateTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_task_svc_pb.UpdateTaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_task_svc_pb.UpdateTaskResponse>;

  getTask(
    request: services_tasks_svc_v1_task_svc_pb.GetTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_task_svc_pb.GetTaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_task_svc_pb.GetTaskResponse>;

  getTasksByPatient(
    request: services_tasks_svc_v1_task_svc_pb.GetTasksByPatientRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_task_svc_pb.GetTasksByPatientResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_task_svc_pb.GetTasksByPatientResponse>;

  getTasksByPatientSortedByStatus(
    request: services_tasks_svc_v1_task_svc_pb.GetTasksByPatientSortedByStatusRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_task_svc_pb.GetTasksByPatientSortedByStatusResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_task_svc_pb.GetTasksByPatientSortedByStatusResponse>;

  getAssignedTasks(
    request: services_tasks_svc_v1_task_svc_pb.GetAssignedTasksRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_task_svc_pb.GetAssignedTasksResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_task_svc_pb.GetAssignedTasksResponse>;

  assignTask(
    request: services_tasks_svc_v1_task_svc_pb.AssignTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_task_svc_pb.AssignTaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_task_svc_pb.AssignTaskResponse>;

  unassignTask(
    request: services_tasks_svc_v1_task_svc_pb.UnassignTaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_task_svc_pb.UnassignTaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_task_svc_pb.UnassignTaskResponse>;

  createSubtask(
    request: services_tasks_svc_v1_task_svc_pb.CreateSubtaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_task_svc_pb.CreateSubtaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_task_svc_pb.CreateSubtaskResponse>;

  updateSubtask(
    request: services_tasks_svc_v1_task_svc_pb.UpdateSubtaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_task_svc_pb.UpdateSubtaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_task_svc_pb.UpdateSubtaskResponse>;

  completeSubtask(
    request: services_tasks_svc_v1_task_svc_pb.CompleteSubtaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_task_svc_pb.CompleteSubtaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_task_svc_pb.CompleteSubtaskResponse>;

  uncompleteSubtask(
    request: services_tasks_svc_v1_task_svc_pb.UncompleteSubtaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_task_svc_pb.UncompleteSubtaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_task_svc_pb.UncompleteSubtaskResponse>;

  deleteSubtask(
    request: services_tasks_svc_v1_task_svc_pb.DeleteSubtaskRequest,
    metadata: grpcWeb.Metadata | undefined,
    callback: (err: grpcWeb.RpcError,
               response: services_tasks_svc_v1_task_svc_pb.DeleteSubtaskResponse) => void
  ): grpcWeb.ClientReadableStream<services_tasks_svc_v1_task_svc_pb.DeleteSubtaskResponse>;

}

export class TaskServicePromiseClient {
  constructor (hostname: string,
               credentials?: null | { [index: string]: string; },
               options?: null | { [index: string]: any; });

  createTask(
    request: services_tasks_svc_v1_task_svc_pb.CreateTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_task_svc_pb.CreateTaskResponse>;

  updateTask(
    request: services_tasks_svc_v1_task_svc_pb.UpdateTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_task_svc_pb.UpdateTaskResponse>;

  getTask(
    request: services_tasks_svc_v1_task_svc_pb.GetTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_task_svc_pb.GetTaskResponse>;

  getTasksByPatient(
    request: services_tasks_svc_v1_task_svc_pb.GetTasksByPatientRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_task_svc_pb.GetTasksByPatientResponse>;

  getTasksByPatientSortedByStatus(
    request: services_tasks_svc_v1_task_svc_pb.GetTasksByPatientSortedByStatusRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_task_svc_pb.GetTasksByPatientSortedByStatusResponse>;

  getAssignedTasks(
    request: services_tasks_svc_v1_task_svc_pb.GetAssignedTasksRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_task_svc_pb.GetAssignedTasksResponse>;

  assignTask(
    request: services_tasks_svc_v1_task_svc_pb.AssignTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_task_svc_pb.AssignTaskResponse>;

  unassignTask(
    request: services_tasks_svc_v1_task_svc_pb.UnassignTaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_task_svc_pb.UnassignTaskResponse>;

  createSubtask(
    request: services_tasks_svc_v1_task_svc_pb.CreateSubtaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_task_svc_pb.CreateSubtaskResponse>;

  updateSubtask(
    request: services_tasks_svc_v1_task_svc_pb.UpdateSubtaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_task_svc_pb.UpdateSubtaskResponse>;

  completeSubtask(
    request: services_tasks_svc_v1_task_svc_pb.CompleteSubtaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_task_svc_pb.CompleteSubtaskResponse>;

  uncompleteSubtask(
    request: services_tasks_svc_v1_task_svc_pb.UncompleteSubtaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_task_svc_pb.UncompleteSubtaskResponse>;

  deleteSubtask(
    request: services_tasks_svc_v1_task_svc_pb.DeleteSubtaskRequest,
    metadata?: grpcWeb.Metadata
  ): Promise<services_tasks_svc_v1_task_svc_pb.DeleteSubtaskResponse>;

}

