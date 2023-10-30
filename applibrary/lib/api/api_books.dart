import '../models/books.dart';

List<Book> getBooksByType(Category category) {
  List<Book> allBooks = getAllBooks();
  return allBooks.where((book) => book.category == category).toList();
}

List<Book> getBooksByPurchased() {
  List<Book> allBooks = getAllBooks();
  return allBooks.where((book) => book.isPurchased == true).toList();
}

List<Book> getBooksByFree() {
  List<Book> allBooks = getAllBooks();
  return allBooks.where((book) => book.isPurchased == true).toList();
}

List<Book> getBooksByOpenPage(int page) {
  List<Book> allBooks = getAllBooks();
  return allBooks.where((book) => book.lastOpenPage >= page).toList();
}

List<Book> getAllBooks() {
  return [
    Book(
      title: 'The Jewel City',
      category: Category.artAndLit,
      isbn: '9780140174922',
      price: 0.00,
      isFree: false,
      isPurchased: false,
      description:
          'Introduction No more accurate account of the Panama-Pacific International Exposition has been given than one that was forced from the lips of a charming Eastern woman of culture.',
      rating: 4.5,
      yearRelease: 2021,
      pages: 320,
      authorName: 'Ben Macomber',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/120240.jpg',
      lastOpenPage: 50,
      totalXP: 100,
    ),
    Book(
      title: 'The French Impressionists (1860-1900)',
      category: Category.artAndLit,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description:
          'An innovative approach to building and growing startups, focusing on rapid experimentation, validated learning, and iterative product development.',
      rating: 4.8,
      pages: 336,
      yearRelease: 2020,
      authorName: 'Camille Mauclair',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/119013.jpg',
      lastOpenPage: 0,
      totalXP: 240,
    ),
    Book(
      category: Category.artAndLit,
      price: 0.00,
      isFree: true,
      isPurchased: false,
      yearRelease: 2020,
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/124719.jpg',
      lastOpenPage: 0,
      totalXP: 198,
      title: 'The Venetian School of Painting',
      isbn: '9781577314806',
      authorName: 'Evelyn March Phillipps',
      description:
          'CHAPTER I VENICE AND HER ART Venetian painting in its prime differs altogether in character from that of every other part of Italy.',
      rating: 4.6,
      pages: 236,
    ),
    Book(
      title: 'The Diary of an Ennuyee',
      category: Category.artAndLit,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Description of Book 2',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Mrs. (Anna) Jameson',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/118274.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Tales of Fantasy and Fact',
      category: Category.fantasy,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Excerpt A PRIMER OF IMAGINARY GEOGRAPHY "Ship ahoy!" There was an answer from our bark—for such it seemed to me by this time—but I could not make out the words.',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Brander Matthews',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/115790.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'The Tale of Lal A Fantasy',
      category: Category.cooking,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Excerpt A PREFACE The aspect of Trafalgar Square, like everything else in the world, depends largely upon how it is viewed, and through whose eyes it is seen. ',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Raymond Paton',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/124172.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'A Fantasy of Mediterranean Travel',
      category: Category.fantasy,
      isbn: '9780307887894',
      price: 0.00,
      isFree: true,
      isPurchased: false,
      description: 'Excerpt A DREAM OF ANTICIPATION (The spirit of the cruise) The King of Cork was a funny shipAs ever ploughed the maine:She kep no log, she went whar she liked;So her Capn warnt to blaime.',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Samuel G. (Samuel Gamble) Bayne',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/100380.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'And Thus He Came A Christmas Fantasy',
      category: Category.fantasy,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Excerpt The Baby "A LITTLE CHILD SHALL LEAD THEM" The heavy perfume of rare blossoms, the wild strains of mad music, the patter of flying feet, the murmur of speech, the ring of laughter, filled the great hall. ',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: ' Cyrus Townsend Brady',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/102173.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Jimbo A Fantasy',
      category: Category.fantasy,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Excerpt "RABBITS" Jimbos governess ought to have known better—but she didnt.',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Algernon Blackwood',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/108416.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'The Ghost A Modern Fantasy',
      category: Category.fantasy,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Excerpt CHAPTER I MY SPLENDID COUSIN I am eight years older now.',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Arnold Bennett',
      imageUrl:
          'https://m.media-amazon.com/images/I/51CLYm-FruL._SX320_BO1,204,203,200_.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Travels through the Empire of Morocco',
      category: Category.travel,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Impressed with these ideas, I readily embraced the offer of a friend to accompany him from Gibraltar to this place',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'John Buffa',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/125958.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Travels in Syria and the Holy Land',
      category: Category.travel,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Excerpt JOURNAL OF A TOUR FROM DAMASCUS COUNTRIES OF THE LIBANUS, AND ANTI-LIBANUS. September 22, 1810.—I Left Damascus at four oclock P.M. ',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'John Lewis Burckhardt',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/125948.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Womans Institute Library of Cookery Volume',
      category: Category.cooking,
      isbn: '9780307887894',
      price: 0.00,
      isFree: true,
      isPurchased: false,
      description: 'FRUIT IN THE DIET 1. FRUIT, as is generally understood, is the fleshy, juicy product of some plant or tree which, when ripe, is suitable for use as food. ',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Womans Institute of Domestic Arts and Sciences',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/127186.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Womans Institute Library of Cookery Volume 3',
      category: Category.cooking,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'VALUE OF SOUP 1. SOUP is a liquid food that is prepared by boiling meat or vegetables, or both, in water and then seasoning and sometimes thickening the liquid that is produced. ',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Womans Institute of Domestic Arts and Sciences',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/127184.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Old Cookery Books and Ancient Cuisine',
      category: Category.history,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'THE EARLY ENGLISHMAN AND HIS FOOD.',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'William Carew Hazlitt',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/111623.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Thoughts on Religion',
      category: Category.religion,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Moreover, I shall aim at estimating in the first instance the kind and degree of influence which has been exerted by Science upon Religion in the past, and then go on to estimate the probable extent of this influence in the future.',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Charles Gore',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/125601.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Religion and Theology',
      category: Category.romance,
      isbn: '9780307887894',
      price: 0.00,
      isFree: true,
      isPurchased: false,
      description: 'There is much talk in the present time of the difficulties of religion. And no doubt there is a sense in which religion is always difficult.',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'John Tulloch',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/113764.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'The Practical Values of Space Exploration Report of the Committee on Science and Astronautics, U.S. House of Representatives, Eighty-Sixth Congress, Second Session',
      category: Category.science,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'This report has been undertaken for a special reason. It is to explain to the taxpayer just why so many of his dollars are going into the American effort to explore space, and to indicate what he can expect in return which is of value to him.',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'United States. Congress. House. Committee on Science and Astronautics.',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/122610.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'James VI and the Gowrie Mystery',
      category: Category.fantasy,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Thus I have been tempted to study this ‘auld misterie’ afresh, and have convinced myself that such historians as Sir Walter Scott, Mr. Frazer Tytler, and Mr.',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Andrew Lang',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/108323.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Comical People',
      category: Category.comics,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'honour of having his pictures copied in stuffed animals, they are thought to be quite worthy of being formed into a volume as a sequel to the "Comical Creatures from Wurtemberg.',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: ' J. J. Grandville',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/104104.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Comic History of the United States',
      category: Category.comics,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: true,
      description: 'THE DISCOVERY OF AMERICA. It was a beautiful evening at the close of a warm, luscious day in old Spain. ',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Bill Nye',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/104102.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Comic Tragedies Written by Jo and Meg and Acted by The ',
      category: Category.comics,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'Excerpt A FOREWORD BY MEG. In the good old times, when "Little Women" worked and played together, the big garret was the scene of many dramatic revels. ',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Louisa May Alcott',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/104103.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Philosophy of Osteopathy',
      category: Category.philosophy,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: true,
      description: 'To readers of my book on the Philosophy of Osteopathy, I wish to say that I will not tire you with a book of compilations just to sell to the anxious reader. ',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'A. T. (Andrew Taylor) Still',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/112469.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'The Approach to Philosophy',
      category: Category.philosophy,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: false,
      description: 'The present book is written for the sake of elucidating the inevitable philosophy. ',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Ralph Barton Perry',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/116313.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'A History of Mediaeval Jewish Philosophy',
      category: Category.philosophy,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: true,
      description: 'The Jewish Encyclopedia has no article on Jewish Philosophy',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Isaac Husik',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/100527.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Art in Needlework A Book about Embroidery',
      category: Category.artAndLit,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: true,
      description: 'It is more than that. At the very least it is a handicraft:',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Mary Buckle',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/102371.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'Art',
      category: Category.philosophy,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: true,
      description: 'uneasiness about an aesthetic which proves that Giotto was the worst. So, my friend, when he arrives very logically at the conclusion that a work of art should be small or round or smooth',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Clive Bell',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/102369.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
    Book(
      title: 'The Philosophy of the Conditioned',
      category: Category.philosophy,
      isbn: '9780307887894',
      price: 12.99,
      isFree: false,
      isPurchased: true,
      description: 'spoken English critics who look upon new terms in philosophy with the same suspicion with which Jack Cade regarded',
      rating: 3.8,
      yearRelease: 2020,
      pages: 300,
      authorName: 'Henry Longueville Mansel',
      imageUrl:
          'https://s3.amazonaws.com/digilibraries.com/covers/122376.jpg',
      lastOpenPage: 0,
      totalXP: 0,
    ),
  ];
}