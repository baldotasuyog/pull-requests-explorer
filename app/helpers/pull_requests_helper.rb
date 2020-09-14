module PullRequestsHelper
  # Get PR Reviewer names
  def get_pr_reviewers(pr)
    pr['requested_reviewers'].map { |r| r['login'] }.join(", ")
  end

  # Get PR labels
  def get_pr_labels(pr)
    pr['labels'].map { |l| l['name'] }.join(", ")
  end
end
