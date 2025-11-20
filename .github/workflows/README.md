# LinkedIn Post Scanner Workflow

This workflow automatically scans LinkedIn for posts from the Operaton company and creates GitHub issues for each new post to facilitate blog post creation.

## Features

- **Scheduled Scanning**: Runs nightly at 2 AM UTC
- **Manual Trigger**: Can be triggered manually via GitHub Actions UI
- **Duplicate Prevention**: Tracks processed posts to avoid creating duplicate issues
- **Automatic Assignment**: Issues are automatically assigned to "copilot"

## How It Works

1. The workflow runs on a schedule or manual trigger
2. Python script (`scan_linkedin.py`) scans LinkedIn for Operaton company posts
3. New posts (not previously processed) are identified
4. For each new post, a GitHub issue is created with:
   - Title: "Blog Post: [LinkedIn Post Title]"
   - Body: Contains the original post content and guidelines for blog post creation
   - Assignee: "copilot"
   - Label: "blog-post"

## Setup Instructions

### LinkedIn API Credentials

To enable actual LinkedIn scanning, you need to:

1. Create a LinkedIn API application at https://www.linkedin.com/developers/
2. Obtain OAuth 2.0 credentials (Client ID and Client Secret)
3. Add the following secrets to your GitHub repository:
   - `LINKEDIN_CLIENT_ID`
   - `LINKEDIN_CLIENT_SECRET`
   - `LINKEDIN_ACCESS_TOKEN` (if using a long-lived token)

### Updating the Scanner Script

Edit `.github/scripts/scan_linkedin.py` to implement the actual LinkedIn API integration:

1. Replace the placeholder `scan_linkedin_posts()` function with actual API calls
2. Use the LinkedIn Marketing API or Company API to fetch posts
3. The function should return a list of dictionaries with this structure:

```python
{
    "title": "Post title or excerpt",
    "url": "https://www.linkedin.com/posts/...",
    "content": "Full post content",
    "date": "YYYY-MM-DD",
    "post_id": "unique_post_identifier"
}
```

### Testing the Workflow

1. Go to the Actions tab in your GitHub repository
2. Select "LinkedIn Post Scanner" workflow
3. Click "Run workflow" to trigger manually
4. Check the workflow logs to see the scanning process
5. Verify that issues are created for any detected posts

## File Structure

```
.github/
├── workflows/
│   └── linkedin-scanner.yml    # Main workflow definition
├── scripts/
│   └── scan_linkedin.py        # Python script for LinkedIn scanning
└── data/
    └── processed_linkedin_posts.json  # Tracks processed posts (auto-generated)
```

## Blog Post Guidelines

When an issue is created, it includes guidelines for creating the blog post:

- Follow naming convention: `YYYY-MM-DD-short-title.md`
- Use similar wording to existing posts
- Include standard front matter with layout and author
- Maintain professional yet approachable tone

## Troubleshooting

### No Posts Found
- Verify LinkedIn API credentials are set correctly
- Check that the company ID for "operaton" is correct
- Review API rate limits

### Issues Not Created
- Check workflow permissions (needs `issues: write`)
- Verify the `copilot` user exists and can be assigned
- Review workflow logs for error messages

## Future Enhancements

Possible improvements:
- Add support for filtering posts by date range
- Include post engagement metrics (likes, comments)
- Add notification options (Slack, email)
- Support multiple social media platforms
