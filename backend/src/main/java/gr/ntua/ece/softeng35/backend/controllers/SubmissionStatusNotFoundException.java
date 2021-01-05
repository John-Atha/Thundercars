package gr.ntua.ece.softeng35.backend.controllers;

class SubmissionStatusNotFoundException extends RuntimeException {
  SubmissionStatusNotFoundException(Integer id) {
    super("Could not find submission status " + id);
  }
}