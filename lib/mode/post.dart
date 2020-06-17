class Post{
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });
  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    title: '孙少平',
    author: '平凡的世界',
    imageUrl: 'https://resources.ninghao.org/images/candy-shop.jpg'
  ),
  Post(
    title: '我是个战士',
    author: '给你一颗子弹',
    imageUrl: 'https://resources.ninghao.org/images/childhood-in-a-picture.jpg'
  ),
  Post(
    title: '加油',
    author: '自卑与超越',
    imageUrl: 'https://resources.ninghao.org/images/contained.jpg'
  ),
  Post(
      title: '画家',
      author: '月亮与六便士',
      imageUrl: 'https://resources.ninghao.org/images/dragon.jpg'
  ),
  Post(
      title: '老人和小男孩',
      author: '老人与海',
      imageUrl: 'https://resources.ninghao.org/images/free_hugs.jpg'
  ),
  Post(
      title: '贾宝玉',
      author: '红楼梦',
      imageUrl: 'https://resources.ninghao.org/images/gravity-falls.png'
  ),
  Post(
      title: '令狐冲',
      author: '笑傲江湖',
      imageUrl: 'https://resources.ninghao.org/images/icecreamtruck.png'
  ),
];