;; DO NOT EDIT: File is generated by AWS-SDK/GENERATOR.

(common-lisp:defpackage #:aws-sdk/services/cur
  (:nicknames #:aws/cur)
  (:import-from #:aws-sdk/generator/shape)
  (:import-from #:aws-sdk/generator/operation)
  (:import-from #:aws-sdk/api))
(common-lisp:in-package #:aws-sdk/services/cur)
(common-lisp:deftype awsregion () 'common-lisp:string)
(common-lisp:deftype additional-artifact () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:deftype additional-artifact-list ()
   '(trivial-types:proper-list additional-artifact))
 (common-lisp:defun |make-additional-artifact-list|
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list additional-artifact))
   aws-sdk/generator/shape::members))
(common-lisp:deftype compression-format () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct
     (delete-report-definition-request (:copier common-lisp:nil))
   (report-name common-lisp:nil :type
    (common-lisp:or report-name common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'delete-report-definition-request
                    'make-delete-report-definition-request))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          delete-report-definition-request))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "ReportName"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               'report-name)))))
(common-lisp:progn
 (common-lisp:defstruct
     (delete-report-definition-response (:copier common-lisp:nil))
   (response-message common-lisp:nil :type
    (common-lisp:or delete-response-message common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'delete-report-definition-response
                    'make-delete-report-definition-response))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          delete-report-definition-response))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "ResponseMessage"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               'response-message)))))
(common-lisp:deftype delete-response-message () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct
     (describe-report-definitions-request (:copier common-lisp:nil))
   (max-results common-lisp:nil :type
    (common-lisp:or max-results common-lisp:null))
   (next-token common-lisp:nil :type
    (common-lisp:or generic-string common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'describe-report-definitions-request
                    'make-describe-report-definitions-request))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          describe-report-definitions-request))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "MaxResults"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               'max-results))
    (aws-sdk/generator/shape::to-query-params "NextToken"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               'next-token)))))
(common-lisp:progn
 (common-lisp:defstruct
     (describe-report-definitions-response (:copier common-lisp:nil))
   (report-definitions common-lisp:nil :type
    (common-lisp:or report-definition-list common-lisp:null))
   (next-token common-lisp:nil :type
    (common-lisp:or generic-string common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'describe-report-definitions-response
                    'make-describe-report-definitions-response))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          describe-report-definitions-response))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "ReportDefinitions"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               'report-definitions))
    (aws-sdk/generator/shape::to-query-params "NextToken"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               'next-token)))))
(common-lisp:progn
 (common-lisp:defstruct
     (duplicate-report-name-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or error-message common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'duplicate-report-name-exception
                    'make-duplicate-report-name-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          duplicate-report-name-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "Message"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               'message)))))
(common-lisp:deftype error-message () 'common-lisp:string)
(common-lisp:deftype generic-string () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct (internal-error-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or error-message common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'internal-error-exception 'make-internal-error-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          internal-error-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "Message"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               'message)))))
(common-lisp:deftype max-results () 'common-lisp:integer)
(common-lisp:progn
 (common-lisp:defstruct
     (put-report-definition-request (:copier common-lisp:nil))
   (report-definition (common-lisp:error ":report-definition is required")
    :type (common-lisp:or report-definition common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'put-report-definition-request
                    'make-put-report-definition-request))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          put-report-definition-request))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "ReportDefinition"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               'report-definition)))))
(common-lisp:progn
 (common-lisp:defstruct
     (put-report-definition-response (:copier common-lisp:nil)))
 (common-lisp:export
  (common-lisp:list 'put-report-definition-response
                    'make-put-report-definition-response))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          put-report-definition-response))
   (common-lisp:append)))
(common-lisp:progn
 (common-lisp:defstruct (report-definition (:copier common-lisp:nil))
   (report-name (common-lisp:error ":report-name is required") :type
    (common-lisp:or report-name common-lisp:null))
   (time-unit (common-lisp:error ":time-unit is required") :type
    (common-lisp:or time-unit common-lisp:null))
   (format (common-lisp:error ":format is required") :type
    (common-lisp:or report-format common-lisp:null))
   (compression (common-lisp:error ":compression is required") :type
    (common-lisp:or compression-format common-lisp:null))
   (additional-schema-elements
    (common-lisp:error ":additional-schema-elements is required") :type
    (common-lisp:or schema-element-list common-lisp:null))
   (s3bucket (common-lisp:error ":s3bucket is required") :type
    (common-lisp:or s3bucket common-lisp:null))
   (s3prefix (common-lisp:error ":s3prefix is required") :type
    (common-lisp:or s3prefix common-lisp:null))
   (s3region (common-lisp:error ":s3region is required") :type
    (common-lisp:or awsregion common-lisp:null))
   (additional-artifacts common-lisp:nil :type
    (common-lisp:or additional-artifact-list common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'report-definition 'make-report-definition))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape report-definition))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "ReportName"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               'report-name))
    (aws-sdk/generator/shape::to-query-params "TimeUnit"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               'time-unit))
    (aws-sdk/generator/shape::to-query-params "Format"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               'format))
    (aws-sdk/generator/shape::to-query-params "Compression"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               'compression))
    (aws-sdk/generator/shape::to-query-params "AdditionalSchemaElements"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               'additional-schema-elements))
    (aws-sdk/generator/shape::to-query-params "S3Bucket"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               's3bucket))
    (aws-sdk/generator/shape::to-query-params "S3Prefix"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               's3prefix))
    (aws-sdk/generator/shape::to-query-params "S3Region"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               's3region))
    (aws-sdk/generator/shape::to-query-params "AdditionalArtifacts"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               'additional-artifacts)))))
(common-lisp:progn
 (common-lisp:deftype report-definition-list ()
   '(trivial-types:proper-list report-definition))
 (common-lisp:defun |make-report-definition-list|
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list report-definition))
   aws-sdk/generator/shape::members))
(common-lisp:deftype report-format () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct
     (report-limit-reached-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or error-message common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'report-limit-reached-exception
                    'make-report-limit-reached-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        (
                         (aws-sdk/generator/shape::shape
                          report-limit-reached-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "Message"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               'message)))))
(common-lisp:deftype report-name () 'common-lisp:string)
(common-lisp:deftype s3bucket () 'common-lisp:string)
(common-lisp:deftype s3prefix () 'common-lisp:string)
(common-lisp:deftype schema-element () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:deftype schema-element-list ()
   '(trivial-types:proper-list schema-element))
 (common-lisp:defun |make-schema-element-list|
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list schema-element))
   aws-sdk/generator/shape::members))
(common-lisp:deftype time-unit () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct (validation-exception (:copier common-lisp:nil))
   (message common-lisp:nil :type
    (common-lisp:or error-message common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'validation-exception 'make-validation-exception))
 (common-lisp:defmethod aws-sdk/generator/shape:shape-to-params
                        ((aws-sdk/generator/shape::shape validation-exception))
   (common-lisp:append
    (aws-sdk/generator/shape::to-query-params "Message"
                                              (common-lisp:slot-value
                                               aws-sdk/generator/shape::shape
                                               'message)))))
(common-lisp:progn
 (common-lisp:defun delete-report-definition
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key report-name)
   (common-lisp:declare (common-lisp:ignorable report-name))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-delete-report-definition-request
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request :service "cur" :method :post :params
                               (common-lisp:cons
                                `("Action" ,@"DeleteReportDefinition")
                                (aws-sdk/generator/shape:shape-to-params
                                 aws-sdk/generator/operation::input)))
      "DeleteReportDefinitionResponse" common-lisp:nil)))
 (common-lisp:export 'delete-report-definition))
(common-lisp:progn
 (common-lisp:defun describe-report-definitions
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key max-results next-token)
   (common-lisp:declare (common-lisp:ignorable max-results next-token))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply
                       'make-describe-report-definitions-request
                       aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request :service "cur" :method :post :params
                               (common-lisp:cons
                                `("Action" ,@"DescribeReportDefinitions")
                                (aws-sdk/generator/shape:shape-to-params
                                 aws-sdk/generator/operation::input)))
      "DescribeReportDefinitionsResponse" common-lisp:nil)))
 (common-lisp:export 'describe-report-definitions))
(common-lisp:progn
 (common-lisp:defun put-report-definition
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key report-definition)
   (common-lisp:declare (common-lisp:ignorable report-definition))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-put-report-definition-request
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request :service "cur" :method :post :params
                               (common-lisp:cons
                                `("Action" ,@"PutReportDefinition")
                                (aws-sdk/generator/shape:shape-to-params
                                 aws-sdk/generator/operation::input)))
      "PutReportDefinitionResponse" common-lisp:nil)))
 (common-lisp:export 'put-report-definition))