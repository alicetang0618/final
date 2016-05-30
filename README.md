# webdev_final
Web Development Final Project: Open Data Visualization

*Xiaorui Tang, xiaoruit, 449972*

## Introduction

Open Data Visualization is an Instagram-like blogging site for open data lovers to share their works and learn from one another. Users can also post their own visualization works and analysis on any datasets on open data portals. They can also view postings by other users and give ratings and/or comments. A user can subscribe to other users' posts, and view a filtered list of posts by subscribed users. Users can also view a list of posts that use a particular open data source, which makes it easier to compare between different posts and find the best practices.

## Additional Feature Choices

- Public URL: 
	- http://opendatavisualization.herokuapp.com/
- “Forgot Password” functionality via email:
	- After submitting the password reset request, you will see the prompt "Email sent with password reset instructions".
	- Look for an email (including a link) in your mail box. 
	- Browse to the link and reset your password.

## Resources

- datasets: The dataset resource enables users to view a list of open datasets and a list of postings on each dataset. It also allows users to add a new open dataset, edit the information of an existing dataset and delete a dataset if there are no posts associated with it.
- posts: The post resource represents blog posts by users. It allows users to browse a list of posts, view a particular post, create a new post, edit and delete their own posts.
- comments: This resource enables users to create/edit/delete their ratings and comments on posts.
- users: This resource represents users. It allows users to view the information and a list of posts by a particular user. 

## Authorizations

- Authenticated users can create new posts. Only the author can edit or delete a post.
- Authenticated users can add datasets. However, only admin users (admin@example.com) can edit or delete a dataset.
- Every authenticated user can only modify his/her own account information and delete his/her own account.
- Only authenticated users are allowed to give ratings and comments on postings.
- Authenticated users can subscribe/unsubscribe to other user's posts.
- Non-authenticated users can only query/view the available resources but cannot modify any of them.

## To Run

1. Clone this repository
1. bundle install
1. rake db:migrate
1. rake db:seed
1. rails server
1. Browse to `http://localhost:3000` and explore the functionalities of this Rails app.