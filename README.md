# webdev_final
Web Development Final Project: Open Data Visualization

*Xiaorui Tang, xiaoruit, 449972*

## Introduction

Open Data Visualization is an Instagram-like blogging site for open data lovers to share their works and learn from one another. Users can also post their own visualization works and analysis on any datasets on open data portals. They can also view postings by other users and give ratings and/or comments. A user can subscribe to other users' posts, and view a filtered list of posts by subscribed users. Users can also view a list of posts that use a particular open data source, which makes it easier to compare between different posts and find the best practices.

## Additional Feature Choices

- Public URL: http://opendatavisualization.herokuapp.com/

## Resources

- datasets: The dataset resource enables users to view a list of open datasets and a list of postings on each dataset. It also allows users to add a new open dataset, edit the information of an existing dataset and delete a dataset if there are no posts associated with it.
- posts: The post resource represents blog posts by users. It allows users to browse a list of posts, view a particular post, create a new post, edit and delete their own posts.
- comments: This resource enables users to create/edit/delete their ratings and comments on posts.
- users: This resource represents users. It allows users to view the information and a list of posts by a particular user.

## To Run

1. Clone this repository
1. bundle install
1. rake db:migrate
1. rake db:seed
1. rails server
1. Browse to `http://localhost:3000` and explore the functionalities of this Rails app.