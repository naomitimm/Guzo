abstract class FormSubmissionState {
  const FormSubmissionState();
}

class FormSubmissionInitial extends FormSubmissionState {
  const FormSubmissionInitial();
}

class FormSubmissionLoading extends FormSubmissionState {
  const FormSubmissionLoading();
}

class FormSubmissionSucceeded extends FormSubmissionState {
  const FormSubmissionSucceeded();
}

class FormSubmissionFailed extends FormSubmissionState {
  final Exception exception;

  const FormSubmissionFailed({required this.exception});
}
