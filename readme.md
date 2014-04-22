# Memberships engine for Refinery CMS.

__A role based membership engine for [refinerycms](http://refinerycms.com)__


This is just another version of Memberships engine for Refinery CMS adapted for my project.
Here are all basic functions from main Memberships engine but with some minor changes. 
I've changed (deleted) some user fields and added possibility to add member from Admin side Membership tab.
This was made to register users only by Admin.
Have luck.


## Requirements

Refinery CMS version 2.0.3 or above.

## Install

Open up your ``Gemfile`` and add at the bottom this line:

```ruby
gem 'refinerycms-memberships', :git => 'https://github.com/IvanVP/refinerycms_membership.git'
```

Now, run 

    bundle install
    rails generate refinery:memberships
    rake db:migrate
    rake db:seed


## Notes

* You're a member or not, there are currently no different levels of membership
* I use jQuery [DataTable](http://www.datatables.net/index) to list members
* It integrates some page parts - you can chance them to fit your own needs

## Needs work

* Needs testing!  I had testing in the first version.  Sadly they are not updated.  Bad developer.. No cookie.
* Could have a role management piece
* Could have different levels of membership

## Versions

### 2.0.1
* numerous bugfixes

### 2.0.0
* updated to Refinery 2.0
* other changes?

### 0.9.9.13
* Allows members to sign-up
* Admins can approve, reject, extend, cancel membership
* Members can log in, and reset their passwords
* No permission redirects to login instead of 404'ing
* Member's directory

### 0.9.9.8
* First version, just has page-role-user management
