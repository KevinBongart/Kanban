project = Project.create(:name => 'ChallengePost')

backlog     = State.create(:position => 0, :limit => 0, :name => 'Backlog')
development = State.create(:position => 1, :limit => 2, :name => 'Development')
qa          = State.create(:position => 2, :limit => 2, :name => 'QA')
deploy      = State.create(:position => 3, :limit => 2, :name => 'Deploy')
done        = State.create(:position => 4, :limit => 0, :name => 'Done')

colin = User.create(
  :name => 'Colin',
  :photo => 'http://img124.imageshack.us/img124/1067/bootstraphaircutlr0.jpg',
  :state => development
)

story = Story.create(
  :name => 'Challenge recommendations',
  :description => 'Recommend relevant challenges to the user. He can then follow the challenge or dismiss the recommendation.',
  :user => colin,
  :project => project,
  :state => development
)

story2 = Story.create(
  :name => 'User dashboard',
  :description => 'A user dashboard to see activities for the challenges users follow.',
  :user => colin,
  :project => project,
  :state => development
)

Story.create(
  :name => 'New challenge header',
  :description => 'Displaying total prizes, number of followers and days left.',
  :user => colin,
  :project => project,
  :state => development
)

story3 = Story.create(
  :name => 'Build "Details" tab of editing a challenge',
  :project => project,
  :user => colin,
  :state => qa
)

story5 = Story.create(
  :name => 'Merge the link to the manage area into the challenges dropdown',
  :project => project,
  :user => colin,
  :state => deploy
)

story4 = Story.create(
  :name => 'Update language for stages',
  :project => project,
  :user => colin,
  :state => done
)

story6 = Story.create(
  :name => 'Do never deploy this',
  :project => project,
  :user => colin,
  :state => done
)

story7 = Story.create(
  :name => 'Make this cool thing happen',
  :project => project,
  :user => colin,
  :state => done
)

story8 = Story.create(
  :name => 'Clicking on any link goes on 404',
  :project => project,
  :user => colin,
  :state => done
)

story9 = Story.create(
  :name => 'Host main app on TI-83',
  :project => project,
  :user => colin,
  :state => done
)

story10 = Story.create(
  :name => 'Homepage redesign',
  :project => project,
  :user => colin,
  :state => done
)

Story.create(
  :name => 'Segment users by rollout feature in google analytics',
  :project => project,
  :user => colin,
  :state => backlog
)

Story.create(
  :name => 'Filter submissions should not show up when there is nothing to filter by',
  :project => project,
  :user => colin,
  :state => development,
  :fast_lane => true
)

Story.create(
  :name => 'Submission message count is incorrect in Manage area',
  :project => project,
  :user => colin,
  :state => backlog
)

Task.create(
  :name => 'Store challenge recommendations in Redis',
  :story => story,
  :done => true
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
  :story => story3,
  :done => true
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story3,
  :done => true
)

AttachedCopy.create(
  :content => "Food truck irony retro, whatever 8-bit yr lomo cred iphone leggings messenger bag tattooed lo-fi. Cred you probably haven't heard of them tofu, messenger bag artisan squid fixie freegan sartorial VHS ethical.",
  :story => story3
)

Task.create(
  :name => 'Store challenge recommendations in Redis',
  :story => story4,
  :done => true
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story4,
  :done => true
)

Task.create(
  :name => 'Store challenge recommendations in Redis',
  :story => story4,
  :done => true
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story4,
  :done => true
)


Task.create(
  :name => 'Store challenge recommendations in Redis',
  :story => story4,
  :done => true
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story4,
  :done => true
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story6,
  :done => true
)


Task.create(
  :name => 'Store challenge recommendations in Redis',
  :story => story6,
  :done => true
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story6,
  :done => true
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story7,
  :done => true
)


Task.create(
  :name => 'Store challenge recommendations in Redis',
  :story => story8,
  :done => true
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story8,
  :done => true
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story9,
  :done => true
)


Task.create(
  :name => 'Store challenge recommendations in Redis',
  :story => story9,
  :done => true
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story9,
  :done => true
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story9,
  :done => true
)


Task.create(
  :name => 'Store challenge recommendations in Redis',
  :story => story9,
  :done => true
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story9,
  :done => true
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story9,
  :done => true
)


Task.create(
  :name => 'Store challenge recommendations in Redis',
  :story => story9,
  :done => true
)

Task.create(
  :name => 'Integrates with user dashboard',
  :story => story10,
  :done => true
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
  :state => development
)

User.create(
  :name => 'John',
  :photo => 'http://f.cl.ly/items/2w2N3S0j38002a361W1o/381454_10150364376592669_507347668_8448500_1026565696_n.jpg',
  :story => story2,
  :state => development
)

User.create(
  :name => 'Juan',
  :photo => 'http://f.cl.ly/items/232b1i3u2h0z1W1a0e1a/Juan-headshot-1.png',
  :story => story,
  :state => development
)

User.create(
  :name => 'Stefano',
  :photo => 'http://f.cl.ly/items/0O0g143p2b3U1p3d371N/stefano_ballabeni_large.jpg',
  :story => story2,
  :state => development
)

User.create(
  :name => 'Ross',
  :photo => 'http://f.cl.ly/items/202H0j1v2T2l0B363m2P/RossGeller.jpg',
  :story => story,
  :state => development
)

User.create(
  :name => 'Robin',
  :photo => 'http://f.cl.ly/items/2m0S030H1H1U261Q1Y11/robin-boutros.png',
  :state => development
)

User.create(
  :name => 'Nikki',
  :photo => 'http://f.cl.ly/items/1X3O1f3q042B3e362935/Screen%20Shot%202011-11-22%20at%2012.42.32%20AM.png',
  :story => story3,
  :state => qa
)