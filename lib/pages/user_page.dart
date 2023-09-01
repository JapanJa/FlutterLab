import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Account'),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Add edit profile functionality here
            },
          ),
        ],
      ),
      body: UserAccount(),
    );
  }
}

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue, Colors.deepPurple],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://scontent.fbkk5-6.fna.fbcdn.net/v/t1.18169-9/530392_381622361926629_848452283_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=cdbe9c&_nc_ohc=CvvL7m_86q0AX8GpJ9j&_nc_ht=scontent.fbkk5-6.fna&oh=00_AfC8sZ7vbQbjLvQufTueH1H5gaK26YM5oObd6W-u_wBRMw&oe=6518D3AD'),
                        radius: 70,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Patara Wongsanga',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 12),
                  ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: Text(
                      's6407012660061@email.kmutnb.ac.th',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white, // Set text color to white
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    title: Text(
                      '065-825-9967',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white, // Set text color to white
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.group,
                          color: Colors.blue,
                          size: 36,
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.thumb_up,
                          color: Colors.green,
                          size: 36,
                        ),
                        Text(
                          'Likes',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Text(
                  'Recent Activity',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Add a list of recent activities or any content you prefer here
                // Example:
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('Posted a new article'),
                  subtitle: Text('2 days ago'),
                ),
                ListTile(
                  leading: Icon(Icons.comment),
                  title: Text('Received 5 new comments'),
                  subtitle: Text('3 days ago'),
                ),
                // Add more activity items as needed
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    // Add a custom action for the button here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // Set button color to red
                  ),
                  child: Text(
                    'Log Out',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




