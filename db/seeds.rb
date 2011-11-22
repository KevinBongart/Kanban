project = Project.create(:name => 'ChallengePost')

backlog     = State.create(:position => 0, :limit => 0, :name => 'Backlog')
development = State.create(:position => 1, :limit => 2, :name => 'Development')
qa          = State.create(:position => 2, :limit => 2, :name => 'QA')
deploy      = State.create(:position => 3, :limit => 2, :name => 'Deploy')
done        = State.create(:position => 4, :limit => 0, :name => 'Done')

story = Story.create(
  :name => 'Challenge recommendations',
  :description => 'Recommend relevant challenges to the user. He can then follow the challenge or dismiss the recommendation.',
  :project => project,
  :state => development
)

story2 = Story.create(
  :name => 'User dashboard',
  :description => 'A user dashboard to see activities for the challenges users follow.',
  :project => project,
  :state => development
)

Story.create(
  :name => 'New challenge header',
  :description => 'Displaying total prizes, number of followers and days left.',
  :project => project,
  :state => development
)

story3 = Story.create(
  :name => 'Build "Details" tab of editing a challenge',
  :project => project,
  :state => qa
)

Story.create(
  :name => 'Merge the link to the manage area into the challenges dropdown',
  :project => project,
  :state => deploy
)

story4 = Story.create(
  :name => 'Update language for stages',
  :project => project,
  :state => done
)

Story.create(
  :name => 'Segment users by rollout feature in google analytics',
  :project => project,
  :state => backlog
)

Story.create(
  :name => 'Filter submissions should not show up when there is nothing to filter by',
  :project => project,
  :state => development,
  :fast_lane => true
)

Story.create(
  :name => 'Submission message count is incorrect in Manage area',
  :project => project,
  :state => backlog
)

Task.create(
  :name => 'Store challenge recommendations in Redis',
  :story => story
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story
)

AttachedImage.create(
  :url => 'http://f.cl.ly/items/3p3s3q0G1X1U26090T1G/Screen%20Shot%202011-11-21%20at%2010.39.24%20PM.png',
  :story => story
)

AttachedCopy.create(
  :content => "Food truck irony retro, whatever 8-bit yr lomo cred iphone leggings messenger bag tattooed lo-fi. Cred you probably haven't heard of them tofu, messenger bag artisan squid fixie freegan sartorial VHS ethical.",
  :story => story
)

Task.create(
  :name => 'Store challenge recommendations in Redis',
  :story => story2
)

AttachedImage.create(
  :url => 'http://f.cl.ly/items/3p3s3q0G1X1U26090T1G/Screen%20Shot%202011-11-21%20at%2010.39.24%20PM.png',
  :story => story2
)

Task.create(
  :name => 'Store challenge recommendations in Redis',
  :story => story3
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story3
)

AttachedCopy.create(
  :content => "Food truck irony retro, whatever 8-bit yr lomo cred iphone leggings messenger bag tattooed lo-fi. Cred you probably haven't heard of them tofu, messenger bag artisan squid fixie freegan sartorial VHS ethical.",
  :story => story3
)

Task.create(
  :name => 'Store challenge recommendations in Redis',
  :story => story4
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story4
)

Task.create(
  :name => 'Store challenge recommendations in Redis',
  :story => story4
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story4
)


Task.create(
  :name => 'Store challenge recommendations in Redis',
  :story => story4
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story4
)

AttachedImage.create(
  :url => 'http://f.cl.ly/items/3p3s3q0G1X1U26090T1G/Screen%20Shot%202011-11-21%20at%2010.39.24%20PM.png',
  :story => story4
)

AttachedCopy.create(
  :content => "Food truck irony retro, whatever 8-bit yr lomo cred iphone leggings messenger bag tattooed lo-fi. Cred you probably haven't heard of them tofu, messenger bag artisan squid fixie freegan sartorial VHS ethical.",
  :story => story4
)

User.create(
  :name => 'Kevin',
  :photo => 'http://f.cl.ly/items/0h09271X2O0h0A0c0a2H/Kevin%20-%20Avatar%20Clark%20Kent.png',
  :story => story
)

User.create(
  :name => 'Blair',
  :photo => 'http://f.cl.ly/items/0h09271X2O0h0A0c0a2H/Kevin%20-%20Avatar%20Clark%20Kent.png',
  :story => story
)

User.create(
  :name => 'N00b',
  :photo => 'http://f.cl.ly/items/0h09271X2O0h0A0c0a2H/Kevin%20-%20Avatar%20Clark%20Kent.png'
)