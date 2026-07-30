import 'quizclass.dart';

class QuestionBank{
  int count = 0;
  List<QuizClass> QuestionCollection = [
    QuizClass('Q 01: Does Artificial Intelligence enable machines to mimic human reasoning and decision-making?', true),
    QuizClass('Q 02: Can an AI system learn from data without being explicitly programmed for every task?', true),
    QuizClass('Q 03: Is Machine Learning the only approach used to build AI systems?', false),
    QuizClass('Q 04: Do all AI systems require large amounts of data to function effectively?', false),
    QuizClass('Q 05: Are neural networks designed based on the structure of the human brain?', true),
    QuizClass('Q 06: Will Artificial Intelligence continue to evolve and advance in the future?', true),
    QuizClass('Q 07: Can AI be used to detect fraud and enhance cybersecurity?', true),
    QuizClass('Q 08: Are robotics and Artificial Intelligence identical concepts?', false),
    QuizClass('Q 09: Does AI have significant impact on industries such as finance, education, and transportation?', true),
    QuizClass('Q 10: Is AI technology only accessible to large organizations and corporations?', false),
    QuizClass('Q 11: Can AI systems adapt and improve their performance over time with experience?', true),
    QuizClass('Q 12: Is AI widely used in healthcare for diagnosis and treatment support?', true),
    QuizClass('Q 13: Does Computer Vision allow machines to interpret and understand visual information?', true),
    QuizClass('Q 14: Are AI models guaranteed to be accurate in all situations?', false),
    QuizClass('Q 15: Is data quality important for the performance of AI models?', true),
    QuizClass('Q 16: Can AI fully replicate human emotions and consciousness?', false),
    QuizClass('Q 17: Do autonomous vehicles rely on AI for navigation and decision-making?', true),
    QuizClass('Q 18: Is Artificial Intelligence limited only to the field of computer science?', false),
    QuizClass('Q 19: Is Deep Learning a specialized subset of Machine Learning?', true),
    QuizClass('Q 20: Is it possible for AI systems to make decisions without any input data?', false),
    QuizClass('Q 21: Can AI be used to analyze large datasets and identify patterns?', true),
    QuizClass('Q 22: Are chatbots and virtual assistants examples of AI-powered applications?', true),
  ];

  String GetQuestion(){
    return   QuestionCollection[count].QuestionStatement!;
  }
  bool GetAnswer(){
    return   QuestionCollection[count].AnswerStatement!;
  }

  void NextQuestion(){
    if(count<QuestionCollection.length)
    {
      count++;
    }
  }

  bool QuizStatus(){
    if(count>=QuestionCollection.length-1)
    {
      return true;
    }
    else{
      return false;
    }
  }

  void resetQuiz(){
    count = 0;
  }
}