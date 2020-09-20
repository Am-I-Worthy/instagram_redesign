class Post {
  final String name;
  final String city;
  final String image;
  final String profileImage;
  final String likes;
  final String comments;
  final String description;

  Post({
    this.city,
    this.comments,
    this.description,
    this.image,
    this.likes,
    this.name,
    this.profileImage,
  });
}
List<Post> posts = [
  Post(
    name: 'Kathrine Woods',
    image: 'https://images.unsplash.com/photo-1550236520-7050f3582da0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    profileImage: 'https://images.unsplash.com/photo-1570840934411-dcd8116cb41b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80',
    likes: '2.3k',
    comments: '121',
    city: 'Los Angeles',
    description: 'Lets enjoy the nature with me'
  ),
  Post(
    name: 'Monicca Bellucci',
    image: 'https://images.unsplash.com/photo-1576098788063-9f0dbaa5ccc4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1868&q=80',
    profileImage: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1868&q=80',
    likes: '15.8k',
    comments: '150',
    city: 'New York',
    description: 'The friends hangout and shopping is the two best thing in the world',
  ),
  Post(
    name: 'Charlotte Lewis',
    image: 'https://images.unsplash.com/photo-1589673644418-f8cb57a01d3f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=1350&q=80',
    profileImage: 'https://images.unsplash.com/photo-1595919734306-88fce56fabfe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80',
    likes: '8.2k',
    comments: '304',
    city: 'Amsterdam',
    description: 'No one can make you feel inferior without your consent',
  ),
  Post(
    name: 'Isabelle Phineas',
    image: 'https://images.unsplash.com/photo-1599906823892-321f8347dfcd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80',
    profileImage: 'https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1362&q=80',
    likes: '10.2k',
    comments: '1012',
    city: 'Paris, Italy',
    description: 'There is one thing the photograph must contain, the humanity of the moment.',
  ),
];
