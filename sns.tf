resource "aws_sns_topic" "ce7-azmi1-sns-tf" {
  name = "ce7-azmi1-sns-tf"

  tags = {
    Name = "ce7-azmi1-sns-tf"
  }
}

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  topic_arn = aws_sns_topic.ce7-azmi1-sns-tf.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.ce7-azmi1-sqs-tf.arn
}