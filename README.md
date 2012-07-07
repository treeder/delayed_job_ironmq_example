# Getting Started

## 1. Set your [Iron.io](http://www.iron.io) project id

Either create an iron.json file in this directory with:

```json
{
    "project_id": "MY_IRON_PROJECT_ID"
}
```

Or set the IRON_PROJECT_ID environment variable.

Or if you're using the IronMQ Heroku add-on, you don't need to do either of those.

## 2. Start the app

    rails s

## 3. Start a worker

    rake jobs:work

## 4. Surf to [localhost:3000](http://localhost:3000)

And watch the worker output on the console.

# What's Going On?

Take a look at `WelcomeController.index` and `User` model to see what's going on. In WelcomeController.index
it's calling:

```ruby
user = User.new
user.delay.background_stuff(WelcomeController.increment)
```

So `User.background_stuff` is being called in the background.
