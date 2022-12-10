class RepositoryResponse<S, T> {
  const RepositoryResponse({required this.status, this.content});
  final S status;
  final T? content;
}

enum SimpleStatus { success, error }
