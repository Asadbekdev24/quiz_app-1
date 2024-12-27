const String questionsBank = """
{
  "questions": [
    {
      "id": "e7c1b90c-1bcf-4bd7-95b4-08e5dbf0b6c1",
      "context": "Flutter nima?",
      "answer1": {
        "id": "d36a33fc-808e-4f41-8b2a-496a0939a3cd",
        "text": "Flutter - mobil ilovalarni yaratish uchun til.",
        "isTrue": false
      },
      "answer2": {
        "id": "02b3b3e6-bb60-4e4e-aee6-2d00e1e4502a",
        "text": "Flutter - ilovalar yaratish uchun ramka.",
        "isTrue": true
      },
      "answer3": {
        "id": "f5a3c0d6-bc98-4e18-8f8f-5fa4d97d3f22",
        "text": "Flutter faqatgina iOS ilovalari uchun ishlatiladi.",
        "isTrue": false
      },
      "answer4": {
        "id": "af38e183-efba-4ff2-9402-ecb44f90e235",
        "text": "Flutter - Java asosida yozilgan.",
        "isTrue": false
      }
    },
    {
      "id": "be2fd9d7-54c7-4b47-9ccf-dbb23e76dcf4",
      "context": "Flutterning asosiy dasturlash tili qaysi?",
      "answer1": {
        "id": "c86d3840-0d4f-4cb5-87f8-e7f423b7851e",
        "text": "Python",
        "isTrue": false
      },
      "answer2": {
        "id": "be3c65e5-1633-40f3-a575-054154c71180",
        "text": "Dart",
        "isTrue": true
      },
      "answer3": {
        "id": "14a5398e-5379-4766-bda1-815db71b63f0",
        "text": "C++",
        "isTrue": false
      },
      "answer4": {
        "id": "25c4217a-7874-4e13-8660-5d4bcd825ee5",
        "text": "Swift",
        "isTrue": false
      }
    },
    {
      "id": "8f242d44-8b6f-4c6f-a7a1-58b2f7c495c2",
      "context": "Flutter yordamida qanday ilovalar yaratiladi?",
      "answer1": {
        "id": "0a5409af-7cc7-4945-8b82-e8916da6e62c",
        "text": "Web",
        "isTrue": true
      },
      "answer2": {
        "id": "bd32844e-f2b7-4b4b-8083-5a8eb5d8cf26",
        "text": "Mobil",
        "isTrue": true
      },
      "answer3": {
        "id": "7ff7a31e-3406-4111-9fcb-d2382e75fc67",
        "text": "Desktop",
        "isTrue": true
      },
      "answer4": {
        "id": "c0161a7e-4eaf-42bb-b8e2-bb1742aa1d44",
        "text": "Operatsion tizimlar",
        "isTrue": false
      }
    },
    {
      "id": "9b2071d4-146b-4e95-b98d-176be7e924d4",
      "context": "Flutter SDK qaysi kompaniya tomonidan ishlab chiqilgan?",
      "answer1": {
        "id": "bbcc2142-f31c-4b1a-8265-74a8e244eff8",
        "text": "Facebook",
        "isTrue": false
      },
      "answer2": {
        "id": "62ef8588-620e-485f-a915-ef8e5a5a9467",
        "text": "Google",
        "isTrue": true
      },
      "answer3": {
        "id": "ebc565a7-cd55-4e02-8e0f-58e62bcedc8f",
        "text": "Microsoft",
        "isTrue": false
      },
      "answer4": {
        "id": "f6151c7a-119c-495b-bccd-2c0d6eb18376",
        "text": "Apple",
        "isTrue": false
      }
    },
    {
      "id": "ac1b8d5e-7481-43d6-b91c-63e17c99128d",
      "context": "Hot reload nima uchun ishlatiladi?",
      "answer1": {
        "id": "41cb94be-0156-4b0d-8b96-48e018b24972",
        "text": "Ilovani ishga tushirish uchun",
        "isTrue": false
      },
      "answer2": {
        "id": "9cfe1f5c-dc47-426b-bbc7-40ea63aab7ec",
        "text": "Koddagi o'zgarishlarni real vaqt rejimida ko'rish uchun",
        "isTrue": true
      },
      "answer3": {
        "id": "e19497f2-e050-41b1-9fc4-799ea135d9d6",
        "text": "Flutter SDK-ni yangilash uchun",
        "isTrue": false
      },
      "answer4": {
        "id": "51f42a55-17b5-4bd2-94ab-b39eb021e7e0",
        "text": "Dart tili uchun kompilyatsiya qilish uchun",
        "isTrue": false
      }
    },
    {
      "id": "e7c1b90c-1bcf-4bd7-95b4-08e5dbf0b6c1",
      "context": "Flutter nima?",
      "answer1": {
        "id": "d36a33fc-808e-4f41-8b2a-496a0939a3cd",
        "text": "Flutter - mobil ilovalarni yaratish uchun til.",
        "isTrue": false
      },
      "answer2": {
        "id": "02b3b3e6-bb60-4e4e-aee6-2d00e1e4502a",
        "text": "Flutter - ilovalar yaratish uchun ramka.",
        "isTrue": true
      },
      "answer3": {
        "id": "f5a3c0d6-bc98-4e18-8f8f-5fa4d97d3f22",
        "text": "Flutter faqatgina iOS ilovalari uchun ishlatiladi.",
        "isTrue": false
      },
      "answer4": {
        "id": "af38e183-efba-4ff2-9402-ecb44f90e235",
        "text": "Flutter - Java asosida yozilgan.",
        "isTrue": false
      }
    },
    {
      "id": "be2fd9d7-54c7-4b47-9ccf-dbb23e76dcf4",
      "context": "Flutterning asosiy dasturlash tili qaysi?",
      "answer1": {
        "id": "c86d3840-0d4f-4cb5-87f8-e7f423b7851e",
        "text": "Python",
        "isTrue": false
      },
      "answer2": {
        "id": "be3c65e5-1633-40f3-a575-054154c71180",
        "text": "Dart",
        "isTrue": true
      },
      "answer3": {
        "id": "14a5398e-5379-4766-bda1-815db71b63f0",
        "text": "C++",
        "isTrue": false
      },
      "answer4": {
        "id": "25c4217a-7874-4e13-8660-5d4bcd825ee5",
        "text": "Swift",
        "isTrue": false
      }
    },
    {
      "id": "8f242d44-8b6f-4c6f-a7a1-58b2f7c495c2",
      "context": "Flutter yordamida qanday ilovalar yaratiladi?",
      "answer1": {
        "id": "0a5409af-7cc7-4945-8b82-e8916da6e62c",
        "text": "Web",
        "isTrue": true
      },
      "answer2": {
        "id": "bd32844e-f2b7-4b4b-8083-5a8eb5d8cf26",
        "text": "Mobil",
        "isTrue": true
      },
      "answer3": {
        "id": "7ff7a31e-3406-4111-9fcb-d2382e75fc67",
        "text": "Desktop",
        "isTrue": true
      },
      "answer4": {
        "id": "c0161a7e-4eaf-42bb-b8e2-bb1742aa1d44",
        "text": "Operatsion tizimlar",
        "isTrue": false
      }
    },
    {
      "id": "9b2071d4-146b-4e95-b98d-176be7e924d4",
      "context": "Flutter SDK qaysi kompaniya tomonidan ishlab chiqilgan?",
      "answer1": {
        "id": "bbcc2142-f31c-4b1a-8265-74a8e244eff8",
        "text": "Facebook",
        "isTrue": false
      },
      "answer2": {
        "id": "62ef8588-620e-485f-a915-ef8e5a5a9467",
        "text": "Google",
        "isTrue": true
      },
      "answer3": {
        "id": "ebc565a7-cd55-4e02-8e0f-58e62bcedc8f",
        "text": "Microsoft",
        "isTrue": false
      },
      "answer4": {
        "id": "f6151c7a-119c-495b-bccd-2c0d6eb18376",
        "text": "Apple",
        "isTrue": false
      }
    },
    {
      "id": "ac1b8d5e-7481-43d6-b91c-63e17c99128d",
      "context": "Hot reload nima uchun ishlatiladi?",
      "answer1": {
        "id": "41cb94be-0156-4b0d-8b96-48e018b24972",
        "text": "Ilovani ishga tushirish uchun",
        "isTrue": false
      },
      "answer2": {
        "id": "9cfe1f5c-dc47-426b-bbc7-40ea63aab7ec",
        "text": "Koddagi o'zgarishlarni real vaqt rejimida ko'rish uchun",
        "isTrue": true
      },
      "answer3": {
        "id": "e19497f2-e050-41b1-9fc4-799ea135d9d6",
        "text": "Flutter SDK-ni yangilash uchun",
        "isTrue": false
      },
      "answer4": {
        "id": "51f42a55-17b5-4bd2-94ab-b39eb021e7e0",
        "text": "Dart tili uchun kompilyatsiya qilish uchun",
        "isTrue": false
      }
    }
  ]
}

""";

