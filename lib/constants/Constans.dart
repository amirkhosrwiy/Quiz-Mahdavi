import 'package:quiz/data/Question.dart';

List<Question> getQuestionsList() {
  var firstQuestion = Question();
  firstQuestion.questionTitle = 'امام زمان (عج) در چه سالی غیبت کردند؟';
  firstQuestion.imageNameNumber = '1';
  firstQuestion.correctAnswer = 0;
  firstQuestion.numberQuestion = '1/10';
  firstQuestion.answerList = [
    'سال 260 هجری قمری',
    'سال 296 هجری شمسی',
    'سال 950 هحری قمری',
    'سال 1402 هجری شمسی',
  ];

  var secondQuestion = Question();
  secondQuestion.questionTitle = 'علت اصلی غیبت امام زمان (عج) چه بود؟';
  secondQuestion.imageNameNumber = '2';
  secondQuestion.correctAnswer = 2;
  secondQuestion.numberQuestion = '2/10';
  secondQuestion.answerList = [
    'انتقام خون امام حسین',
    'جنگ با سفیانی و گروه شیطانی',
    'حفظ خداوند از جان ایشان',
    'در امان ماندن حضرت از حکومت عباسی',
  ];

  var thirdQuestion = Question();
  thirdQuestion.questionTitle = 'امام زمان فرزند کدام امام معصوم است؟';
  thirdQuestion.imageNameNumber = '3';
  thirdQuestion.correctAnswer = 0;
  thirdQuestion.numberQuestion = '3/10';
  thirdQuestion.answerList = [
    'امام حسن عسکری(ع)',
    'حضرت امام موسی الکاظم(ع)',
    'امام جعفر صادق(ع)',
    'حضرت امام حسن مجتبی(ع)',
  ];

  var forQuestion = Question();
  forQuestion.questionTitle = 'امام زمان در کدام شهر متولد شده اند؟';
  forQuestion.imageNameNumber = '4';
  forQuestion.correctAnswer = 2;
  forQuestion.numberQuestion = '4/10';
  forQuestion.answerList = [
    'شهر کربلای عراق',
    'شهر دمشق سوریه',
    'شهر سامرای عراق',
    'شهر حلب سوریه',
  ];

  var fifthQuestion = Question();
  fifthQuestion.questionTitle = 'حضرت مهدی(عج) چند سال سن دارند؟';
  fifthQuestion.imageNameNumber = '5';
  fifthQuestion.correctAnswer = 3;
  fifthQuestion.numberQuestion = '5/10';
  fifthQuestion.answerList = [
    '1139',
    '1317',
    '1197',
    '1179',
  ];

  var sixthQuestion = Question();
  sixthQuestion.questionTitle =
      'به بیان نورانی امام زمان (عج)چه چیزی امام را از شیعیان جدا کرده است؟';
  sixthQuestion.imageNameNumber = '6';
  sixthQuestion.correctAnswer = 1;
  sixthQuestion.numberQuestion = '6/10';
  sixthQuestion.answerList = [
    'اراده و خواست الهی',
    'اعمال ناشایست آنان',
    'حفظ جان حضرت',
    'غیبت حضرت',
  ];

  var seventhQuestion = Question();
  seventhQuestion.questionTitle = 'نام مبارک مادر حضرت مهدی(عج) چیست؟';
  seventhQuestion.imageNameNumber = '7';
  seventhQuestion.correctAnswer = 0;
  seventhQuestion.numberQuestion = '7/10';
  seventhQuestion.answerList = [
    'نرجس خاتون',
    'حضرت مریم',
    'حضرت ام کلثوم',
    'بی بی شهر بانو',
  ];

  var eighthQuestion = Question();
  eighthQuestion.questionTitle =
      'کدام یک از گزینه های ذیل جزء وظایف منتظران نیست؟';
  eighthQuestion.imageNameNumber = '8';
  eighthQuestion.correctAnswer = 2;
  eighthQuestion.numberQuestion = '8/10';
  eighthQuestion.answerList = [
    'شناخت امام',
    'الگو پذیری',
    'شناخت علائم ظهور',
    'یاد امام',
  ];

  var ninthQuestion = Question();
  ninthQuestion.questionTitle = 'کدام یک جزء القاب امام زمان(عج) نیست؟';
  ninthQuestion.imageNameNumber = '9';
  ninthQuestion.correctAnswer = 3;
  ninthQuestion.numberQuestion = '9/10';
  ninthQuestion.answerList = [
    'قائم',
    'صاحب الزمان',
    'بقیه الله',
    'کرار',
  ];

  var tenthQuestion = Question();
  tenthQuestion.questionTitle =
      'در کدام یک از دعاهای زیر سخن از تجدید عهد و پیمان یا امام زمان مطرح شده است؟';
  tenthQuestion.imageNameNumber = '10';
  tenthQuestion.correctAnswer = 0;
  tenthQuestion.numberQuestion = '10/10';
  tenthQuestion.answerList = [
    'دعای عهد',
    'زیارت ال یاسین',
    'دعای فرج',
    'همه موارد',
  ];

  return [
    firstQuestion,
    secondQuestion,
    thirdQuestion,
    forQuestion,
    fifthQuestion,
    sixthQuestion,
    seventhQuestion,
    eighthQuestion,
    ninthQuestion,
    tenthQuestion,
  ];
}
