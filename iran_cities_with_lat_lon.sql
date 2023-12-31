﻿DECLARE @json NVARCHAR(MAX);

SET @json = N'[
      {
        "state": "اردبیل",
        "city": "اردبیل",
        "latitude": "38.255643",
        "longitude": "48.298459",
        "province": "اردبیل"
      },
      {
        "state": "اردبیل",
        "city": "خلخال",
        "latitude": "37.6192217",
        "longitude": "48.5278144",
        "province": "خلخال"
      },
      {
        "state": "اردبیل",
        "city": "مشگین‌شهر",
        "latitude": "38.395411",
        "longitude": "47.664785",
        "province": "مشگین‌شهر"
      },
      {
        "state": "اردبیل",
        "city": "عنبران",
        "latitude": "38.4900003",
        "longitude": "48.4355097",
        "province": "نمین"
      },
      {
        "state": "اردبیل",
        "city": "آبی‌بیگلو",
        "latitude": "38.28365",
        "longitude": "48.5527012",
        "province": "نمین"
      },
      {
        "state": "اردبیل",
        "city": "گرمی",
        "latitude": "39.0288619",
        "longitude": "48.08053",
        "province": "گرمی یا مغان"
      },
      {
        "state": "اردبیل",
        "city": "پارس‌آباد",
        "latitude": "39.6461735",
        "longitude": "47.918551",
        "province": "پارس‌آباد"
      },
      {
        "state": "اردبیل",
        "city": "اصلاندوز",
        "latitude": "39.4417175",
        "longitude": "47.4102145",
        "province": "پارس آباد"
      },
      {
        "state": "اردبیل",
        "city": "بیله‌سوار",
        "latitude": "39.378137",
        "longitude": "48.3496043",
        "province": "بیله‌سوار"
      },
      {
        "state": "اردبیل",
        "city": "دشت مغان",
        "latitude": "39.621213",
        "longitude": "47.905368",
        "province": "دشت مغان"
      },
      {
        "state": "اردبیل",
        "city": "نیر",
        "latitude": "38.034005",
        "longitude": "47.9991069",
        "province": "نیر"
      },
      {
        "state": "اردبیل",
        "city": "گیوی",
        "latitude": "37.691527",
        "longitude": "48.339211",
        "province": "کوثر"
      },
      {
        "state": "اصفهان",
        "city": "شهرضا",
        "latitude": "32.0116032",
        "longitude": "51.8651719",
        "province": "شهرضا"
      },
      {
        "state": "اصفهان",
        "city": "مبارکه",
        "latitude": "32.3424135",
        "longitude": "51.5046633",
        "province": "مبارکه"
      },
      {
        "state": "اصفهان",
        "city": "زرین‌شهر",
        "latitude": "32.3887062",
        "longitude": "51.3737142",
        "province": "لنجان"
      },
      {
        "state": "اصفهان",
        "city": "دیزیچه",
        "latitude": "32.3805576",
        "longitude": "51.5116857",
        "province": "دیزیچه لنجان"
      },
      {
        "state": "اصفهان",
        "city": "ابریشم",
        "latitude": "32.5580254",
        "longitude": "51.5731114",
        "province": "فلاورجان"
      },
      {
        "state": "اصفهان",
        "city": "فلاورجان",
        "latitude": "32.5576772",
        "longitude": "51.5079153",
        "province": "فلاورجان"
      },
      {
        "state": "اصفهان",
        "city": "دولت آباد",
        "province": "دولت آباد",
        "latitude": "33.6091519",
        "longitude": "52.2002763"
      },
      {
        "state": "اصفهان",
        "city": "محمد آباد",
        "latitude": "34.1962521",
        "longitude": "55.1730666",
        "province": "اصفهان"
      },
      {
        "state": "اصفهان",
        "city": "نجف‌آباد",
        "latitude": "32.6334121",
        "longitude": "51.3656199",
        "province": "نجف‌آباد"
      },
      {
        "state": "اصفهان",
        "city": "داران",
        "latitude": "32.992154",
        "longitude": "50.403993",
        "province": "فریدن"
      },
      
      {
        "state": "اصفهان",
        "city": "خوراسگان",
        "latitude": "32.6517232",
        "longitude": "51.7550143",
        "province": "اصفهان"
      },
      {
        "state": "اصفهان",
        "city": "اصفهان",
        "latitude": "32.6707877",
        "longitude": "51.6650002",
        "province": "اصفهان"
      },
      {
        "state": "اصفهان",
        "city": "تیران",
        "province": "تیران و کرون",
        "latitude": "32.7039199",
        "longitude": "51.1530853"
      },
      {
        "state": "اصفهان",
        "city": "رضوان شهر",
        "latitude": "32.665594",
        "longitude": "51.064282",
        "province": "تیران و کرون"
      },
      {
        "state": "اصفهان",
        "city": "عسگران",
        "latitude": "32.865658",
        "longitude": "50.852181",
        "province": "تیران و کرون"
      },
      {
        "state": "اصفهان",
        "city": "دهق",
        "latitude": "33.1015294",
        "longitude": "50.9668778",
        "province": "نجف‌آباد"
      },
      {
        "state": "اصفهان",
        "city": "اردستان",
        "latitude": "33.3797762",
        "longitude": "52.3724967",
        "province": "اردستان"
      },
      {
        "state": "اصفهان",
        "city": "میمه",
        "latitude": "33.4522614",
        "longitude": "51.1719845",
        "province": "برخوار و میمه"
      },
      {
        "state": "اصفهان",
        "city": "گلپایگان",
        "latitude": "33.456488",
        "longitude": "50.2883303",
        "province": "گلپایگان"
      },
      {
        "state": "اصفهان",
        "city": "گوگد",
        "latitude": "33.4755802",
        "longitude": "50.3554565",
        "province": "گلپایگان"
      },
      {
        "state": "اصفهان",
        "city": "نطنز",
        "latitude": "33.5136336",
        "longitude": "51.9140078",
        "province": "نطنز"
      },
      {
        "state": "اصفهان",
        "city": "کمه ",
        "latitude": "31.067191",
        "longitude": "51.5934004",
        "province": "سمیرم "
      },
      {
        "state": "اصفهان",
        "city": "سمیرم",
        "latitude": "31.4136588",
        "longitude": "51.5708254",
        "province": "سمیرم "
      },
      {
        "state": "اصفهان",
        "city": "بادرود",
        "latitude": "33.6916541",
        "longitude": "52.0076895",
        "province": "نطنز"
      },
      {
        "state": "اصفهان",
        "city": "خور",
        "province": "خور و بیابانک",
        "latitude": "33.7761331",
        "longitude": "55.0828304"
      },
      {
        "state": "اصفهان",
        "city": "خوروبیابانک",
        "latitude": "33.7761331",
        "longitude": "55.0828304",
        "province": "خوروبیابانک"
      },
      {
        "state": "اصفهان",
        "city": "کاشان",
        "latitude": "33.9873888",
        "longitude": "51.4427935",
        "province": "کاشان"
      },
      {
        "state": "اصفهان",
        "city": "نیاسر",
        "latitude": "33.970466",
        "longitude": "51.1457545",
        "province": "کاشان"
      },
      {
        "state": "اصفهان",
        "city": "زاغل",
        "latitude": "33.248596",
        "longitude": "52.599043",
        "province": "اردستان"
      },
      {
        "state": "اصفهان",
        "city": "آبچوئیه",
        "latitude": "32.684988",
        "longitude": "52.790015",
        "province": "اصفهان"
      },
      {
        "state": "اصفهان",
        "city": "اژیه",
        "latitude": "32.4400685",
        "longitude": "52.3789114",
        "province": "اصفهان"
      },
      {
        "state": "اصفهان",
        "city": "تودشک",
        "latitude": "32.7198176",
        "longitude": "52.6673493",
        "province": "اصفهان"
      },
      {
        "state": "اصفهان",
        "city": "نیک‌آباد",
        "latitude": "32.3041598",
        "longitude": "52.2032026",
        "province": "اصفهان"
      },
      {
        "state": "اصفهان",
        "city": "کوهپایه ",
        "latitude": "32.7138321",
        "longitude": "52.4405045",
        "province": "اصفهان"
      },
      {
        "state": "اصفهان",
        "city": "ابوزیدآباد",
        "latitude": "33.900233",
        "longitude": "51.762085",
        "province": "آران و بیدگل"
      },
      {
        "state": "اصفهان",
        "city": "نوش‌آباد",
        "latitude": "34.0776414",
        "longitude": "51.4338827",
        "province": "آران و بیدگل"
      },
      {
        "state": "اصفهان",
        "city": "خورزوق",
        "latitude": "32.7776241",
        "longitude": "51.649011",
        "province": "برخوارومیمه"
      },
      {
        "state": "اصفهان",
        "city": "کمشجه",
        "latitude": "32.905838",
        "longitude": "51.812339",
        "province": "برخوارومیمه"
      },
      {
        "state": "اصفهان",
        "city": "خمینی‌شهر",
        "latitude": "32.6938201",
        "longitude": "51.5254892",
        "province": "خمینی‌شهر"
      },
      {
        "state": "اصفهان",
        "city": "خوانسار",
        "latitude": "33.22692",
        "longitude": "50.3146044",
        "province": "خوانسار"
      },
      {
        "state": "اصفهان",
        "city": "بهارستان",
        "latitude": "32.4885313",
        "longitude": "51.7790514",
        "province": "اصفهان"
      },
      {
        "state": "اصفهان",
        "city": "شاهین‌شهر",
        "latitude": "32.8556169",
        "longitude": "51.558376",
        "province": "برخوارومیمه"
      },
      {
        "state": "اصفهان",
        "city": "برف‌انبار",
        "latitude": "33.0022943",
        "longitude": "50.1956911",
        "province": "فریدون‌شهر"
      },
      {
        "state": "اصفهان",
        "city": "فریدون‌شهر",
        "latitude": "32.942017",
        "longitude": "50.1203257",
        "province": "فریدون‌شهر"
      },
      {
        "state": "اصفهان",
        "city": "جوشقان و کامو",
        "latitude": "33.602492",
        "longitude": "51.225135",
        "province": "کاشان"
      },
      {
        "state": "اصفهان",
        "city": "گل‌شهر",
        "latitude": "33.504866",
        "longitude": "50.464067",
        "province": "گلپایگان"
      },
      {
        "state": "اصفهان",
        "city": "ورنامخواست",
        "province": "لنجان",
        "latitude": "32.357052",
        "longitude": "51.378721"
      },
      {
        "state": "اصفهان",
        "city": "چمگردان",
        "province": "لنجان",
        "latitude": "32.393093",
        "longitude": "51.338919"
      },
      {
        "state": "اصفهان",
        "city": "زیباشهر",
        "latitude": "32.389599",
        "longitude": "51.561477",
        "province": "مبارکه"
      },
      {
        "state": "اصفهان",
        "city": "طالخونچه",
        "latitude": "32.2661882",
        "longitude": "51.5639295",
        "province": "مبارکه"
      },
      {
        "state": "اصفهان",
        "city": "کهریزسنگ",
        "latitude": "32.629326",
        "longitude": "51.477685",
        "province": "نجف‌آباد"
      },
      {
        "state": "اصفهان",
        "city": "گل‌دشت",
        "latitude": "32.6247941",
        "longitude": "51.4391574",
        "province": "نجف‌آباد"
      },
      {
        "state": "اصفهان",
        "city": "جندق",
        "province": "خور و بیابانک",
        "latitude": "34.0422837",
        "longitude": "54.4150165"
      },
      {
        "state": "اصفهان",
        "city": "خالدآباد",
        "latitude": "33.6998125",
        "longitude": "51.9883183",
        "province": "نطنز"
      },
      {
        "state": "اصفهان",
        "city": "نایین",
        "province": "نایین",
        "latitude": "32.8610688",
        "longitude": "53.085985"
      },
      {
        "state": "اصفهان",
        "city": "فریدن",
        "latitude": "33.0214829",
        "longitude": "50.3069088",
        "province": "فریدن"
      },
      {
        "state": "اصفهان",
        "city": "فولادشهر",
        "province": "فولادشهر",
        "latitude": "32.4834868",
        "longitude": "51.4173278"
      },
      {
        "state": "اصفهان",
        "city": "گز",
        "province": "گز",
        "latitude": "32.8062144",
        "longitude": "51.6168226"
      },
      {
        "state": "اصفهان",
        "city": "دهاقان",
        "latitude": "31.9344047",
        "longitude": "51.6547247",
        "province": "دهاقان"
      },
      {
        "state": "اصفهان",
        "city": "چادگان",
        "latitude": "32.763910",
        "longitude": "50.621355",
        "province": "چادگان"
      },
      {
        "state": "اصفهان",
        "city": "مورچه خورت",
        "latitude": "33.087209",
        "longitude": "51.478221",
        "province": "برخوار و میمه"
      },
      {
        "state": "اصفهان",
        "city": "زیار",
        "latitude": "32.512311",
        "longitude": "51.939079",
        "province": "اصفهان"
      },
      {
        "state": "اصفهان",
        "city": "محمودآباد",
        "latitude": "32.775676",
        "longitude": "51.573910",
        "province": "اصفهان"
      },
      {
        "state": "البرز",
        "city": "کرج",
        "latitude": "35.8121955",
        "longitude": "51.0073853",
        "province": "کرج"
      },
      {
        "state": "البرز",
        "city": "ساوجبلاغ",
        "latitude": "35.960996",
        "longitude": "50.683794",
        "province": "ساوجبلاغ"
      },
      {
        "state": "البرز",
        "city": "طالقان",
        "latitude": "36.177868",
        "longitude": "50.7655155",
        "province": "ساوجبلاغ"
      },
      {
        "state": "البرز",
        "city": "هشتگرد",
        "latitude": "35.9641824",
        "longitude": "50.6858036",
        "province": "ساوجبلاغ"
      },
      {
        "state": "البرز",
        "city": "چهارباغ",
        "latitude": "35.8394861",
        "longitude": "50.8480555",
        "province": "ساوجبلاغ"
      },
      {
        "state": "البرز",
        "city": "کوهسار",
        "latitude": "35.9627157",
        "longitude": "50.7920955",
        "province": "ساوجبلاغ"
      },
      {
        "state": "البرز",
        "city": "اشتهارد",
        "latitude": "35.7234469",
        "longitude": "50.3670608",
        "province": "کرج"
      },
      {
        "state": "البرز",
        "city": "ماهدشت",
        "latitude": "35.7299002",
        "longitude": "50.8110899",
        "province": "کرج"
      },
      {
        "state": "البرز",
        "city": "محمدشهر",
        "latitude": "35.7598709",
        "longitude": "50.9187407",
        "province": "کرج"
      },
      {
        "state": "البرز",
        "city": "مشکین‌دشت",
        "latitude": "35.7481168",
        "longitude": "50.9420223",
        "province": "کرج"
      },
      {
        "state": "البرز",
        "city": "کمالشهر",
        "latitude": "35.8598687",
        "longitude": "50.8663488",
        "province": "کرج"
      },
      {
        "state": "البرز",
        "city": "گرمدره",
        "latitude": "35.7553861",
        "longitude": "51.0686177",
        "province": "کرج"
      },
      {
        "state": "البرز",
        "city": "آسارا",
        "latitude": "36.036872",
        "longitude": "51.1954666",
        "province": "کرج"
      },
      {
        "state": "البرز",
        "city": "نظرآباد",
        "latitude": "35.9558897",
        "longitude": "50.6097443",
        "province": "نظرآباد"
      },
      {
        "state": "البرز",
        "city": "فردیس",
        "latitude": "35.722139",
        "longitude": "50.976111",
        "province": "فردیس"
      },
      {
        "state": "ایلام",
        "city": "ایلام",
        "latitude": "33.6379365",
        "longitude": "46.4202743",
        "province": "ایلام"
      },
      {
        "state": "ایلام",
        "city": "آسمان آباد",
        "province": "شیروان چرداول",
        "latitude": "33.8619245",
        "longitude": "46.4518435"
      },
      {
        "state": "ایلام",
        "city": "چرداول",
        "province": "شیروان چرداول",
        "latitude": "33.670852",
        "longitude": "46.757511"
      },
      {
        "state": "ایلام",
        "city": "موسیان",
        "latitude": "32.5209668",
        "longitude": "47.376702",
        "province": "دهلران"
      },
      {
        "state": "ایلام",
        "city": "دهلران",
        "latitude": "32.6914932",
        "longitude": "47.2674712",
        "province": "دهلران"
      },
      {
        "state": "ایلام",
        "city": "میمه",
        "latitude": "33.2280492",
        "longitude": "46.919563",
        "province": "دهلران"
      },
      {
        "state": "ایلام",
        "city": "پهله",
        "latitude": "33.0119112",
        "longitude": "46.8815641",
        "province": "دهلران"
      },
      {
        "state": "ایلام",
        "city": "دشت عباس",
        "latitude": "32.4146641",
        "longitude": "47.8241975",
        "province": "دهلران"
      },
      {
        "state": "ایلام",
        "city": "مهران",
        "latitude": "33.1239454",
        "longitude": "46.1658505",
        "province": "مهران"
      },
      {
        "state": "ایلام",
        "city": "سرابله",
        "province": "سرابله",
        "latitude": "33.7675797",
        "longitude": "46.5654912"
      },
      {
        "state": "ایلام",
        "city": "ایوان",
        "latitude": "33.8282411",
        "longitude": "46.3096374",
        "province": "ایوان"
      },
      {
        "state": "ایلام",
        "city": "ابدانان",
        "latitude": "32.9925",
        "longitude": "47.419722",
        "province": "ابدانان"
      },
      {
        "state": "ایلام",
        "city": "دره شهر",
        "latitude": "33.1385109",
        "longitude": "47.3753599",
        "province": "دره شهر"
      },
      {
        "state": "ایلام",
        "city": "لومار",
        "latitude": "33.567913",
        "longitude": "46.812133",
        "province": "سیروان"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "خراجو",
        "latitude": "37.7249808",
        "longitude": "45.9832817",
        "province": "مراغه"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "بناب",
        "latitude": "37.3386053",
        "longitude": "46.0592907",
        "province": "بناب"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "بناب جدید",
        "province": "مرند",
        "latitude": "38.428347",
        "longitude": "45.9086682"
      },
      {
        "state": "آذربایجان شرقی ",
        "city": "خمارلو ",
        "latitude": "39.1557854",
        "longitude": "47.0336350903252",
        "province": "کلیبر "
      },
      {
        "state": "آذربایجان شرقی",
        "city": "مراغه",
        "latitude": "37.3916705",
        "longitude": "46.2397524",
        "province": "مراغه"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "میانه",
        "latitude": "37.428343",
        "longitude": "47.705862",
        "province": "میانه"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "هشترود",
        "latitude": "37.4764996",
        "longitude": "47.0495919",
        "province": "هشترود"
      },
      {
        "state": "آذربایجان شرقی ",
        "city": "ملکان",
        "latitude": "37.1429593",
        "longitude": "46.104082",
        "province": "ملکان"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "آذرشهر",
        "latitude": "37.7577189",
        "longitude": "45.9784018",
        "province": "آذرشهر"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "ممقان",
        "province": "آذرشهر",
        "latitude": "37.8443261",
        "longitude": "45.9729822"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "گوگان",
        "province": "آذرشهر",
        "latitude": "37.7818413",
        "longitude": "45.9038288"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "اسکو",
        "latitude": "37.9163003",
        "longitude": "46.1243894",
        "province": "اسکو"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "سراب",
        "latitude": "37.9407851",
        "longitude": "47.5374867",
        "province": "سراب"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "دوزدوزان",
        "latitude": "37.948976",
        "longitude": "47.119787",
        "province": "سراب"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "سهند",
        "province": "اسکو",
        "latitude": "37.9471891",
        "longitude": "46.1184603"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "تبریز",
        "latitude": "38.0739964",
        "longitude": "46.2961952",
        "province": "تبریز"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "شرفخانه",
        "latitude": "38.1786897",
        "longitude": "45.4892529",
        "province": "شبستر"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "شبستر",
        "latitude": "38.1783704",
        "longitude": "45.7002363",
        "province": "شبستر"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "خامنه",
        "latitude": "38.1934507",
        "longitude": "45.6298023",
        "province": "شبستر"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "هریس",
        "latitude": "38.2472611",
        "longitude": "47.1162759",
        "province": "هریس"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "صوفیان",
        "latitude": "38.27694",
        "longitude": "45.981373",
        "province": "شبستر"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "مرند",
        "latitude": "38.4306358",
        "longitude": "45.7741",
        "province": "مرند"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "اهر",
        "latitude": "38.4774934",
        "longitude": "47.0662215",
        "province": "اهر"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "ورزقان",
        "latitude": "38.5087607",
        "longitude": "46.6487801",
        "province": "ورزقان"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "یامچی",
        "latitude": "38.5223144",
        "longitude": "45.6404499",
        "province": "مرند"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "زنوز",
        "latitude": "38.5880287",
        "longitude": "45.8319818",
        "province": "مرند"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "کلیبر",
        "latitude": "38.8653368",
        "longitude": "47.038217",
        "province": "کلیبر"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "جلفا",
        "latitude": "38.937675",
        "longitude": "45.6251478",
        "province": "جلفا"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "ایلخچی",
        "province": "اسکو",
        "latitude": "37.9389278",
        "longitude": "45.9800159"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "هوراند",
        "province": "اهر",
        "latitude": "38.8604709",
        "longitude": "47.3683131"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "بستان‌آباد",
        "latitude": "37.8429496",
        "longitude": "46.8339774",
        "province": "بستان‌آباد"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "تیکمه‌داش",
        "latitude": "37.7257203",
        "longitude": "46.9375589",
        "province": "بستان‌آباد"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "باسمنج",
        "latitude": "37.9955619",
        "longitude": "46.4749113",
        "province": "تبریز"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "خسروشهر",
        "latitude": "37.9501802",
        "longitude": "46.0524977",
        "province": "تبریز"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "سردرود",
        "latitude": "38.0278895",
        "longitude": "46.1474327",
        "province": "تبریز"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "سیه‌رود",
        "latitude": "38.8693808",
        "longitude": "46.0023332",
        "province": "جلفا"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "هادیشهر",
        "latitude": "38.8416756",
        "longitude": "45.6648065",
        "province": "جلفا"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "قره‌آغاج",
        "latitude": "37.1287747",
        "longitude": "46.9750123",
        "province": "چاراویماق"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "شربیان",
        "province": "سراب",
        "latitude": "37.8811174",
        "longitude": "47.1008591"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "مهربان",
        "province": "سراب",
        "latitude": "38.0806733",
        "longitude": "47.1317722"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "تسوج",
        "province": "شبستر",
        "latitude": "38.3168836",
        "longitude": "45.3590459"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "سیس",
        "province": "شبستر",
        "latitude": "38.1997037",
        "longitude": "45.8124325"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "شندآباد",
        "province": "شبستر",
        "latitude": "38.1414419",
        "longitude": "45.6298841"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "وایقان",
        "province": "شبستر",
        "latitude": "38.1304823",
        "longitude": "45.7129464"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "کوزه‌کنان",
        "province": "شبستر",
        "latitude": "38.1865623",
        "longitude": "45.5751442"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "عجب‌شیر",
        "latitude": "37.4770929",
        "longitude": "45.8936922",
        "province": "عجب‌شیر"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "آبش‌احمد",
        "latitude": "39.0431974",
        "longitude": "47.3169755",
        "province": "کلیبر"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "کُشکسرای",
        "latitude": "38.463535",
        "longitude": "45.566139",
        "province": "مرند"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "لیلان",
        "province": "ملکان",
        "latitude": "37.0111324",
        "longitude": "46.2059139"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "آقکند",
        "latitude": "37.256908",
        "longitude": "48.064766",
        "province": "میانه"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "بخشایش",
        "latitude": "38.131648",
        "longitude": "46.9471214",
        "province": "هریس"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "خواجه",
        "latitude": "38.1529122",
        "longitude": "46.5827856",
        "province": "هریس"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "باروق",
        "latitude": "38.1730922",
        "longitude": "47.0637922",
        "province": "هریس"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "زرنق",
        "latitude": "37.3351718",
        "longitude": "47.6724879",
        "province": "هریس"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "ذوالبین",
        "latitude": "37.478514",
        "longitude": "46.878859",
        "province": "هشترود"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "آذران",
        "province": "هشترود",
        "latitude": "37.476617",
        "longitude": "47.050753"
      },
      {
        "state": "آذربایجان شرقی",
        "city": "خاروانا",
        "province": "خاروانا",
        "latitude": "38.6851329",
        "longitude": "46.1697582"
      },
      {
        "state": "آذربایجان غربی",
        "city": "ارومیه",
        "latitude": "37.5493473",
        "longitude": "45.0682863",
        "province": "ارومیه"
      },
      {
        "state": "آذربایجان غربی",
        "city": "سردشت",
        "latitude": "36.1553184",
        "longitude": "45.4799637",
        "province": "سردشت"
      },
      {
        "state": "آذربایجان غربی",
        "city": "تکاب",
        "latitude": "36.4007658",
        "longitude": "47.1117125",
        "province": "تکاب"
      },
      {
        "state": "آذربایجان غربی",
        "city": "سیمینه",
        "latitude": "36.7303445",
        "longitude": "46.1534194",
        "province": "بوکان"
      },
      {
        "state": "آذربایجان غربی",
        "city": "بوکان",
        "latitude": "36.5215096",
        "longitude": "46.2111837",
        "province": "بوکان"
      },
      {
        "state": "آذربایجان غربی",
        "city": "مهاباد",
        "latitude": "37.55128515",
        "longitude": "45.0880451009582",
        "province": "مهاباد"
      },
      {
        "state": "آذربایجان غربی",
        "city": "کشاورز",
        "province": "شاهین‌دژ",
        "latitude": "36.8355495",
        "longitude": "46.3573777"
      },
      {
        "state": "آذربایجان غربی",
        "city": "نقده",
        "latitude": "36.9555967",
        "longitude": "45.3878933",
        "province": "نقده"
      },
      {
        "state": "آذربایجان غربی",
        "city": "محمدیار",
        "latitude": "36.9841837",
        "longitude": "45.5167584",
        "province": "نقده"
      },
      {
        "state": "آذربایجان غربی",
        "city": "میاندوآب",
        "latitude": "36.9695588",
        "longitude": "46.0993809",
        "province": "میاندوآب"
      },
      {
        "state": "آذربایجان غربی",
        "city": "اشنویه",
        "latitude": "37.0418235",
        "longitude": "45.0983499",
        "province": "اشنویه"
      },
      {
        "state": "آذربایجان غربی",
        "city": "سلماس",
        "latitude": "38.1969035",
        "longitude": "44.7685015",
        "province": "سلماس"
      },
      {
        "state": "آذربایجان غربی",
        "city": "خوی",
        "province": "خوی",
        "latitude": "38.5504343",
        "longitude": "44.95354"
      },
      {
        "state": "آذربایجان غربی",
        "city": "ماکو",
        "latitude": "39.2910508",
        "longitude": "44.4521426",
        "province": "ماکو"
      },
      {
        "state": "آذربایجان غربی",
        "city": "بازرگان",
        "latitude": "39.3886668",
        "longitude": "44.3876859",
        "province": "ماکو"
      },
      {
        "state": "آذربایجان غربی",
        "city": "سرو",
        "province": "ارومیه",
        "latitude": "36.6163224",
        "longitude": "45.5116179"
      },
      {
        "state": "آذربایجان غربی",
        "city": "سیلوانه",
        "province": "ارومیه",
        "latitude": "37.4216528",
        "longitude": "44.8543213"
      },
      {
        "state": "آذربایجان غربی",
        "city": "نوشین‌شهر",
        "province": "ارومیه",
        "latitude": "37.7345037",
        "longitude": "45.0510944"
      },
      {
        "state": "آذربایجان غربی",
        "city": "نالوس",
        "latitude": "36.9835017",
        "longitude": "45.1431549",
        "province": "اشنویه"
      },
      {
        "state": "آذربایجان غربی",
        "city": "پلدشت",
        "latitude": "39.3476817",
        "longitude": "45.0687348",
        "province": "پلدشت"
      },
      {
        "state": "آذربایجان غربی",
        "city": "گردکشانه",
        "latitude": "36.8084866",
        "longitude": "45.264528",
        "province": "پیرانشهر"
      },
      {
        "state": "آذربایجان غربی",
        "city": "پیرانشهر",
        "latitude": "36.6994559",
        "longitude": "45.140337",
        "province": "پیرانشهر"
      },
      {
        "state": "آذربایجان غربی",
        "city": "مرز تمرچین",
        "latitude": "36.659780",
        "longitude": "45.095417",
        "province": "پیرانشهر"
      },
      {
        "state": "آذربایجان غربی",
        "city": "آواجیق",
        "latitude": "39.3301839",
        "longitude": "44.1538901",
        "province": "چالدران"
      },
      {
        "state": "آذربایجان غربی",
        "city": "سیه‌چشمه",
        "latitude": "39.0651269",
        "longitude": "44.3844026",
        "province": "چالدران"
      },
      {
        "state": "آذربایجان غربی",
        "city": "ایواوغلی",
        "province": "خوی",
        "latitude": "38.7139034",
        "longitude": "45.206595"
      },
      {
        "state": "آذربایجان غربی",
        "city": "فیرورق",
        "province": "خوی",
        "latitude": "38.5821035",
        "longitude": "44.8316495"
      },
      {
        "state": "آذربایجان غربی",
        "city": "میرآباد",
        "province": "سردشت",
        "latitude": "38.998891",
        "longitude": "44.7098283"
      },
      {
        "state": "آذربایجان غربی",
        "city": "شاهین دژ",
        "latitude": "36.6784386",
        "longitude": "46.5656627",
        "province": "شاهین‌دژ"
      },
      {
        "state": "آذربایجان غربی",
        "city": "محمودآباد",
        "latitude": "37.3659163",
        "longitude": "45.130571",
        "province": "شاهین‌دژ"
      },
      {
        "state": "آذربایجان غربی",
        "city": "شوط",
        "latitude": "39.2178874",
        "longitude": "44.7711898",
        "province": "شوط"
      },
      {
        "state": "آذربایجان غربی",
        "city": "باروق",
        "latitude": "36.9546339",
        "longitude": "46.3247366",
        "province": "میاندوآب"
      },
      {
        "state": "آذربایجان غربی",
        "city": "چایپاره",
        "province": "چایپاره",
        "latitude": "38.890746",
        "longitude": "45.026135"
      },
      {
        "state": "آذربایجان غربی",
        "city": "قره ضیاءالدین",
        "province": "چایپاره",
        "latitude": "38.890746",
        "longitude": "45.026135"
      },
      {
        "state": "بوشهر",
        "city": "بوشهر",
        "latitude": "28.9310786",
        "longitude": "50.8458443",
        "province": "&nbsp;"
      },
      {
        "state": "بوشهر",
        "city": "بندر بوشهر",
        "latitude": "28.9310786",
        "longitude": "50.8458443",
        "province": "بوشهر"
      },
      {
        "state": "بوشهر",
        "city": "خارک",
        "latitude": "29.2530113",
        "longitude": "50.3268076",
        "province": "بوشهر"
      },
      {
        "state": "بوشهر",
        "city": "چغادک",
        "latitude": "28.9880011",
        "longitude": "51.0357975",
        "province": "بوشهر"
      },
      {
        "state": "بوشهر",
        "city": "جم",
        "latitude": "27.8262811",
        "longitude": "52.3263597",
        "province": "جم"
      },
      {
        "state": "بوشهر",
        "city": "ریز",
        "latitude": "28.0517466",
        "longitude": "52.0837191",
        "province": "جم"
      },
      {
        "state": "بوشهر",
        "city": "اهرم",
        "latitude": "28.8830282",
        "longitude": "51.2742019",
        "province": "تنگستان"
      },
      {
        "state": "بوشهر",
        "city": "دلوار",
        "latitude": "28.7628729",
        "longitude": "51.0719232",
        "province": "تنگستان"
      },
      {
        "state": "بوشهر",
        "city": "آب‌پخش",
        "latitude": "29.3604336",
        "longitude": "51.0713656",
        "province": "دشتستان"
      },
      {
        "state": "بوشهر",
        "city": "برازجان",
        "latitude": "29.2661428",
        "longitude": "51.2120597",
        "province": "دشتستان"
      },
      {
        "state": "بوشهر",
        "city": "تنگ ارم",
        "latitude": "29.1544748",
        "longitude": "51.5293588",
        "province": "دشتستان"
      },
      {
        "state": "بوشهر",
        "city": "دالکی",
        "latitude": "29.4307486",
        "longitude": "51.2925138",
        "province": "دشتستان"
      },
      {
        "state": "بوشهر",
        "city": "سعدآباد",
        "latitude": "29.3848355",
        "longitude": "51.1166292",
        "province": "دشتستان"
      },
      {
        "state": "بوشهر",
        "city": "شبانکاره",
        "latitude": "29.4696831",
        "longitude": "50.9909728",
        "province": "دشتستان"
      },
      {
        "state": "بوشهر",
        "city": "کلمه",
        "latitude": "28.9436694",
        "longitude": "51.4581903",
        "province": "دشتستان"
      },
      {
        "state": "بوشهر",
        "city": "وحدتیه",
        "latitude": "29.48306",
        "longitude": "51.2369657",
        "province": "دشتستان"
      },
      {
        "state": "بوشهر",
        "city": "خورموج",
        "latitude": "28.6543108",
        "longitude": "51.3758834",
        "province": "دشتی"
      },
      {
        "state": "بوشهر",
        "city": "شنبه",
        "latitude": "28.3952701",
        "longitude": "51.7645229",
        "province": "دشتی"
      },
      {
        "state": "بوشهر",
        "city": "کاکی",
        "latitude": "28.3366456",
        "longitude": "51.523857",
        "province": "دشتی"
      },
      {
        "state": "بوشهر",
        "city": "آبدان",
        "province": "دیر",
        "latitude": "28.0811819",
        "longitude": "51.7703454"
      },
      {
        "state": "بوشهر",
        "city": "بردخون",
        "province": "دیر",
        "latitude": "28.0623996",
        "longitude": "51.4771795"
      },
      {
        "state": "بوشهر",
        "city": "بردستان",
        "province": "دیر",
        "latitude": "27.874025",
        "longitude": "51.9596196"
      },
      {
        "state": "بوشهر",
        "city": "بندر دیر",
        "province": "دیر",
        "latitude": "27.8412393",
        "longitude": "51.9372144"
      },
      {
        "state": "بوشهر",
        "city": "دیر",
        "province": "دیر",
        "latitude": "27.8412393",
        "longitude": "51.9372144"
      },
      {
        "state": "بوشهر",
        "city": "امام حسن",
        "latitude": "29.8407369",
        "longitude": "50.2645174",
        "province": "دیلم"
      },
      {
        "state": "بوشهر",
        "city": "بندر دیلم",
        "latitude": "30.0529363",
        "longitude": "50.162503",
        "province": "دیلم"
      },
      {
        "state": "بوشهر",
        "city": "بندر کنگان",
        "latitude": "27.8370685",
        "longitude": "52.06371",
        "province": "کنگان"
      },
      {
        "state": "بوشهر",
        "city": "بنک",
        "latitude": "27.8720312",
        "longitude": "52.0270259",
        "province": "کنگان"
      },
      {
        "state": "بوشهر",
        "city": "طاهری",
        "latitude": "28.8160021",
        "longitude": "51.2114427",
        "province": "کنگان"
      },
      {
        "state": "بوشهر",
        "city": "عسلویه",
        "latitude": "27.4760027",
        "longitude": "52.6070411",
        "province": "کنگان"
      },
      {
        "state": "بوشهر",
        "city": "نخل تقی",
        "latitude": "27.4980795",
        "longitude": "52.583854",
        "province": "کنگان"
      },
      {
        "state": "بوشهر",
        "city": "بندر ریگ",
        "latitude": "29.4875457",
        "longitude": "50.6295575",
        "province": "گناوه"
      },
      {
        "state": "بوشهر",
        "city": "بندر گناوه",
        "latitude": "29.5820434",
        "longitude": "50.518295",
        "province": "گناوه"
      },
      {
        "state": "تهران",
        "city": "تهران",
        "province": "تهران",
        "latitude": "35.7081327",
        "longitude": "51.4139829"
      },
      {
        "state": "تهران",
        "city": "ورامین",
        "latitude": "35.3283255",
        "longitude": "51.6460307",
        "province": "ورامین"
      },
      {
        "state": "تهران",
        "city": "قرچک",
        "latitude": "35.4421824",
        "longitude": "51.5697005",
        "province": "ورامین"
      },
      {
        "state": "تهران",
        "city": "پاکدشت",
        "latitude": "35.4751698",
        "longitude": "51.6806973",
        "province": "پاکدشت"
      },
      {
        "state": "تهران",
        "city": "اسلام‌شهر",
        "latitude": "35.5445805",
        "longitude": "51.2302457",
        "province": "اسلام‌شهر"
      },
      {
        "state": "تهران",
        "city": "اسلام شهر",
        "latitude": "35.5445805",
        "longitude": "51.2302457",
        "province": "اسلام شهر "
      },
      {
        "state": "تهران",
        "city": "باقرشهر",
        "province": "ری",
        "latitude": "35.5338489",
        "longitude": "51.4053842"
      },
      {
        "state": "تهران",
        "city": "گلستان",
        "latitude": "35.5181918",
        "longitude": "51.181869",
        "province": "رباط‌کریم"
      },
      {
        "state": "تهران",
        "city": "ری",
        "province": "ری",
        "latitude": "35.5990753",
        "longitude": "51.4356413"
      },
      {
        "state": "تهران",
        "city": "قاسم آباد (شورآباد)",
        "province": "ری",
        "latitude": "35.473791",
        "longitude": "51.352377"
      },
      {
        "state": "تهران",
        "city": "وحیدیه",
        "latitude": "35.7162273",
        "longitude": "51.4691198232762",
        "province": "شهریار"
      },
      {
        "state": "تهران",
        "city": "دماوند",
        "latitude": "35.7179802",
        "longitude": "52.0681882",
        "province": "دماوند"
      },
      {
        "state": "تهران",
        "city": "قدس",
        "province": "قدس",
        "latitude": "35.7204271",
        "longitude": "51.1100769"
      },
      {
        "state": "تهران",
        "city": "ملارد",
        "latitude": "35.666763",
        "longitude": "50.9790423",
        "province": "ملارد "
      },
      {
        "state": "تهران",
        "city": "رودهن",
        "province": "رودهن",
        "latitude": "35.734772",
        "longitude": "51.9063798"
      },
      {
        "state": "تهران",
        "city": "فیروزکوه",
        "latitude": "35.7556732",
        "longitude": "52.7730592",
        "province": "فیروزکوه"
      },
      {
        "state": "تهران",
        "city": "اندیشه",
        "latitude": "35.7288939",
        "longitude": "51.4388377",
        "province": "شهریار"
      },
      {
        "state": "تهران",
        "city": "آبعلی",
        "province": "دماوند",
        "latitude": "35.7620424",
        "longitude": "51.9628205"
      },
      {
        "state": "تهران",
        "city": "شمیرانات",
        "latitude": "35.9548021",
        "longitude": "51.5991643",
        "province": "&nbsp;"
      },
      {
        "state": "تهران",
        "city": "لواسان",
        "latitude": "35.8204845",
        "longitude": "51.6321444",
        "province": "شمیرانات"
      },
      {
        "state": "تهران",
        "city": "باغستان",
        "latitude": "35.6452441",
        "longitude": "51.1310219",
        "province": "شهریار"
      },
      {
        "state": "تهران",
        "city": "فشم",
        "latitude": "35.9293609",
        "longitude": "51.5271914",
        "province": "شمیرانات"
      },
      {
        "state": "تهران",
        "city": "شریف‌آباد",
        "latitude": "35.422537",
        "longitude": "51.7902387",
        "province": "پاکدشت"
      },
      {
        "state": "تهران",
        "city": "پیشوا",
        "province": "پیشوا",
        "latitude": "35.3058833",
        "longitude": "51.7252649"
      },
      {
        "state": "تهران",
        "city": "کیلان",
        "province": "دماوند",
        "latitude": "35.5505069",
        "longitude": "52.1684289"
      },
      {
        "state": "تهران",
        "city": "رباط‌کریم",
        "latitude": "35.4850737",
        "longitude": "51.0841778",
        "province": "رباط‌کریم"
      },
      {
        "state": "تهران",
        "city": "صالح‌آباد",
        "latitude": "35.4255334",
        "longitude": "51.6167707",
        "province": "رباط‌کریم"
      },
      {
        "state": "تهران",
        "city": "نسیم‌شهر",
        "latitude": "35.5613083",
        "longitude": "51.164113",
        "province": "رباط‌کریم"
      },
      {
        "state": "تهران",
        "city": "نصیرشهر",
        "latitude": "35.4928077",
        "longitude": "51.1387733",
        "province": "رباط‌کریم"
      },
      {
        "state": "تهران",
        "city": "زردبند",
        "latitude": "35.8219333",
        "longitude": "51.5801099",
        "province": "شمیرانات"
      },
      {
        "state": "تهران",
        "city": "پردیس (شهر)",
        "latitude": "35.740712",
        "longitude": "51.780285",
        "province": "تهران"
      },
      {
        "state": "تهران",
        "city": "بومهن",
        "province": "تهران",
        "latitude": "35.7285207",
        "longitude": "51.864313"
      },
      {
        "state": "تهران",
        "city": "شاهدشهر",
        "latitude": "35.5735353",
        "longitude": "51.0868332",
        "province": "شهریار"
      },
      {
        "state": "تهران",
        "city": "شهریار",
        "latitude": "35.6589015",
        "longitude": "51.0586022",
        "province": "شهریار"
      },
      {
        "state": "تهران",
        "city": "صباشهر",
        "latitude": "35.582554",
        "longitude": "51.1132146",
        "province": "شهریار"
      },
      {
        "state": "تهران",
        "city": "فردوسیه",
        "latitude": "35.6000722",
        "longitude": "51.0627593",
        "province": "شهریار"
      },
      {
        "state": "تهران",
        "city": "ارجمند",
        "latitude": "35.8154903",
        "longitude": "52.5141334",
        "province": "فیروزکوه"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "شهرکرد",
        "latitude": "32.3257366",
        "longitude": "50.8497369",
        "province": "شهرکرد"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "لردگان",
        "latitude": "31.5126237",
        "longitude": "50.8303948",
        "province": "لردگان"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "گندمان",
        "latitude": "31.8650116",
        "longitude": "51.153733",
        "province": "بروجن"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "بروجن",
        "latitude": "31.9719093",
        "longitude": "51.291596",
        "province": "بروجن"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "اردل",
        "latitude": "31.997682",
        "longitude": "50.6609476",
        "province": "اردل"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "جونقان",
        "latitude": "32.1516564",
        "longitude": "50.6856466",
        "province": "فارسان"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "فارسان",
        "latitude": "32.2549162",
        "longitude": "50.5624938",
        "province": "فارسان"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "فرخ‌شهر",
        "latitude": "32.2709126",
        "longitude": "50.98251",
        "province": "شهرکرد"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "سامان",
        "latitude": "32.4529354",
        "longitude": "50.9104233",
        "province": "شهرکرد"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "فرادنبه",
        "latitude": "32.0080417",
        "longitude": "51.2176939",
        "province": "بروجن"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "بلداجی",
        "latitude": "31.9365711",
        "longitude": "51.0513348",
        "province": "بروجن"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "سفیددشت",
        "latitude": "32.134229",
        "longitude": "51.181183",
        "province": "بروجن"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "سودجان",
        "latitude": "32.5215922",
        "longitude": "50.4018883",
        "province": "شهرکرد"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "سورشجان",
        "latitude": "32.3163942",
        "longitude": "50.6761962",
        "province": "شهرکرد"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "نافچ",
        "latitude": "32.4228214",
        "longitude": "50.7896658",
        "province": "شهرکرد"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "هفشجان",
        "latitude": "32.225568",
        "longitude": "50.792714",
        "province": "شهرکرد"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "گهرو",
        "latitude": "32.004757",
        "longitude": "50.8871785",
        "province": "شهرکرد"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "شلمزار",
        "province": "کیار",
        "latitude": "32.0464968",
        "longitude": "50.8184796"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "ناغان",
        "province": "کیار",
        "latitude": "31.9344796",
        "longitude": "50.7276893"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "آلونی",
        "latitude": "31.5528467",
        "longitude": "51.0576007",
        "province": "لردگان"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "مال خلیفه",
        "latitude": "31.290719",
        "longitude": "51.259282",
        "province": "لردگان"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "کوهرنگ",
        "latitude": "32.464890",
        "longitude": "50.134851",
        "province": "کوهرنگ"
      },
      {
        "state": "چهارمحال و بختیاری",
        "city": "چلگرد",
        "latitude": "32.4682525",
        "longitude": "50.1222437",
        "province": "کوهرنگ"
      },
      {
        "state": "خراسان جنوبی",
        "city": "بیرجند",
        "latitude": "32.8633961",
        "longitude": "59.2177294",
        "province": "بیرجند"
      },
      {
        "state": "خراسان جنوبی",
        "city": "نهبندان",
        "latitude": "31.5431543",
        "longitude": "60.0349456",
        "province": "نهبندان"
      },
      {
        "state": "خراسان جنوبی",
        "city": "شوسف",
        "latitude": "31.8035023",
        "longitude": "60.0099186",
        "province": "نهبندان"
      },
      {
        "state": "خراسان جنوبی",
        "city": "طارق",
        "latitude": "31.8220003",
        "longitude": "59.9380744",
        "province": "نهبندان"
      },
      {
        "state": "خراسان جنوبی",
        "city": "سربیشه",
        "latitude": "32.5728594",
        "longitude": "59.7967053",
        "province": "سربیشه"
      },
      {
        "state": "خراسان جنوبی",
        "city": "قائن",
        "latitude": "33.722041",
        "longitude": "59.178587",
        "province": "قائنات"
      },
      {
        "state": "خراسان جنوبی",
        "city": "قائنات",
        "latitude": "33.722041",
        "longitude": "59.178587",
        "province": "&nbsp;"
      },
      {
        "state": "خراسان جنوبی",
        "city": "سرایان",
        "latitude": "33.8615755",
        "longitude": "58.5250488",
        "province": "سرایان"
      },
      {
        "state": "خراسان جنوبی",
        "city": "خضری دشت بیاض",
        "province": "قائنات",
        "latitude": "34.0216542",
        "longitude": "58.8140837"
      },
      {
        "state": "خراسان جنوبی",
        "city": "بشرویه",
        "province": "بشرویه",
        "latitude": "33.8662098",
        "longitude": "57.4253814"
      },
      {
        "state": "خراسان جنوبی",
        "city": "آیَسک",
        "latitude": "33.889298",
        "longitude": "58.380232",
        "province": "سرایان"
      },
      {
        "state": "خراسان جنوبی",
        "city": "اسلامیه",
        "latitude": "34.0448547",
        "longitude": "58.2202617",
        "province": "فردوس"
      },
      {
        "state": "خراسان جنوبی",
        "city": "فردوس",
        "latitude": "34.01816",
        "longitude": "58.1689746",
        "province": "فردوس"
      },
      {
        "state": "خراسان جنوبی",
        "city": "اسفدن",
        "province": "قائنات",
        "latitude": "33.6478435",
        "longitude": "59.7791575"
      },
      {
        "state": "خراسان جنوبی",
        "city": "خوسف",
        "latitude": "32.780742",
        "longitude": "58.892384",
        "province": "خوسف"
      },
      {
        "state": "خراسان جنوبی",
        "city": "درمیان",
        "latitude": "32.835952",
        "longitude": "59.9023989",
        "province": "&nbsp;"
      },
      {
        "state": "خراسان رضوی",
        "city": "سنگان",
        "province": "خواف",
        "latitude": "34.402234",
        "longitude": "60.256576"
      },
      {
        "state": "خراسان جنوبی",
        "city": "مرز میل 78",
        "province": "مرز میل 78",
        "latitude": "32.162518",
        "longitude": "60.865421"
      },
      {
        "state": "خراسان جنوبی",
        "city": "طبس",
        "latitude": "33.596031",
        "longitude": "56.9247263",
        "province": "طبس"
      },
      {
        "state": "خراسان رضوی",
        "city": "مشهد مقدس",
        "latitude": "36.259900",
        "longitude": "59.615173",
        "province": "مشهد"
      },
      {
        "state": "خراسان رضوی",
        "city": "کاخک",
        "province": "گناباد",
        "latitude": "34.1511878",
        "longitude": "58.6392528"
      },
      {
        "state": "خراسان رضوی",
        "city": "بیدخت",
        "province": "گناباد",
        "latitude": "34.3463245",
        "longitude": "58.7573243"
      },
      {
        "state": "خراسان رضوی",
        "city": "گناباد",
        "province": "گناباد",
        "latitude": "34.350302",
        "longitude": "58.6859427"
      },
      {
        "state": "خراسان رضوی",
        "city": "بجستان",
        "latitude": "34.5163087",
        "longitude": "58.1834619",
        "province": "بجستان"
      },
      {
        "state": "خراسان رضوی",
        "city": "تایباد",
        "latitude": "34.7401763",
        "longitude": "60.7755127",
        "province": "تایباد"
      },
      {
        "state": "خراسان رضوی",
        "city": "سلامی",
        "latitude": "34.745068",
        "longitude": "59.976769",
        "province": "خواف"
      },
      {
        "state": "خراسان رضوی",
        "city": "کاریز",
        "latitude": "34.8127778",
        "longitude": "60.8241667",
        "province": "تایباد"
      },
      {
        "state": "خراسان رضوی",
        "city": "ملک آباد",
        "province": "ملک آباد",
        "latitude": "35.9993296",
        "longitude": "59.5910871"
      },
      {
        "state": "خراسان رضوی",
        "city": "باخرز",
        "province": "باخرز",
        "latitude": "34.9941781",
        "longitude": "60.3148224"
      },
      {
        "state": "خراسان رضوی",
        "city": "تربت جام",
        "latitude": "35.2432546",
        "longitude": "60.626313",
        "province": "تربت جام"
      },
      {
        "state": "خراسان رضوی",
        "city": "بردسکن",
        "latitude": "35.2611338",
        "longitude": "57.9685311",
        "province": "بردسکن"
      },
      {
        "state": "خراسان رضوی",
        "city": "تربت حیدریه",
        "latitude": "35.2740853",
        "longitude": "59.2194494",
        "province": "تربت حیدریه"
      },
      {
        "state": "خراسان رضوی",
        "city": "کاشمر",
        "latitude": "35.2444908",
        "longitude": "58.464248",
        "province": "کاشمر"
      },
      {
        "state": "خراسان رضوی",
        "city": "بایگ",
        "latitude": "35.3756395",
        "longitude": "59.0389376",
        "province": "تربت حیدریه"
      },
      {
        "state": "خراسان رضوی",
        "city": "فریمان",
        "latitude": "35.701215",
        "longitude": "59.8465304",
        "province": "فریمان"
      },
      {
        "state": "خراسان رضوی",
        "city": "فرهادگرد",
        "latitude": "35.7664697",
        "longitude": "59.7345327",
        "province": "فریمان"
      },
      {
        "state": "خراسان رضوی",
        "city": "سبزوار",
        "latitude": "36.2134053",
        "longitude": "57.6808799",
        "province": "سبزوار"
      },
      {
        "state": "خراسان رضوی",
        "city": "داورزن",
        "latitude": "36.3521485",
        "longitude": "56.8766695",
        "province": "سبزوار"
      },
      {
        "state": "خراسان رضوی",
        "city": "نیشابور",
        "latitude": "36.210595",
        "longitude": "58.7922805",
        "province": "نیشابور"
      },
      {
        "state": "خراسان رضوی",
        "city": "خرو",
        "latitude": "36.1442815",
        "longitude": "59.0158029",
        "province": "نیشابور"
      },
      {
        "state": "خراسان رضوی",
        "city": "دررود",
        "latitude": "36.1386891",
        "longitude": "59.1162125",
        "province": "نیشابور"
      },
      {
        "state": "خراسان رضوی",
        "city": "قدمگاه",
        "latitude": "36.1063279",
        "longitude": "59.0597459",
        "province": "نیشابور"
      },
      {
        "state": "خراسان رضوی",
        "city": "بینالود",
        "latitude": "35.980470",
        "longitude": "59.361874",
        "province": "نیشابور"
      },
      {
        "state": "خراسان رضوی",
        "city": "چکنه",
        "latitude": "36.8179746",
        "longitude": "58.5035404",
        "province": "نیشابور"
      },
      {
        "state": "خراسان رضوی",
        "city": "همت آباد",
        "province": "فیروزه",
        "latitude": "36.2976907",
        "longitude": "58.4637326"
      },
      {
        "state": "خراسان رضوی",
        "city": "مشهد",
        "latitude": "36.2974945",
        "longitude": "59.6059232",
        "province": "&nbsp;"
      },
      {
        "state": "خراسان رضوی",
        "city": "طرقبه",
        "province": "طرقبه و شاندیز",
        "latitude": "36.3097179",
        "longitude": "59.3741338"
      },
      {
        "state": "خراسان رضوی",
        "city": "شاندیز",
        "province": "طرقبه و شاندیز",
        "latitude": "36.3958867",
        "longitude": "59.2985989"
      },
      {
        "state": "خراسان رضوی",
        "city": "سرخس",
        "latitude": "36.5399097",
        "longitude": "61.1564431",
        "province": "سرخس"
      },
      {
        "state": "خراسان رضوی",
        "city": "خانگیران",
        "province": "خانگیران",
        "latitude": "36.412538",
        "longitude": "60.850606"
      },
      {
        "state": "خراسان رضوی",
        "city": "چناران",
        "latitude": "36.6483961",
        "longitude": "59.1185005",
        "province": "چناران"
      },
      {
        "state": "خراسان رضوی",
        "city": "قوچان",
        "latitude": "37.105993",
        "longitude": "58.5108056",
        "province": "قوچان"
      },

      {
        "state": "خراسان رضوی",
        "city": "انابد",
        "latitude": "35.2532264",
        "longitude": "57.8122034",
        "province": "بردسکن"
      },
      {
        "state": "خراسان رضوی",
        "city": "فیروزه",
        "province": "تخت جلگه",
        "latitude": "36.2863586",
        "longitude": "58.5868002"
      },
      {
        "state": "خراسان رضوی",
        "city": "نصرآباد",
        "latitude": "36.6416168",
        "longitude": "59.191188",
        "province": "تربت جام"
      },
      {
        "state": "خراسان رضوی",
        "city": "نیل‌شهر",
        "latitude": "35.1224857",
        "longitude": "60.7736351",
        "province": "تربت جام"
      },
      {
        "state": "خراسان رضوی",
        "city": "قلعه نو",
        "province": "قلعه نو",
        "latitude": "36.7973579",
        "longitude": "59.9507471"
      },
      {
        "state": "خراسان رضوی",
        "city": "جغتای",
        "latitude": "36.638031",
        "longitude": "57.0743721",
        "province": "جغتای"
      },
      {
        "state": "خراسان رضوی",
        "city": "خلیل‌آباد",
        "latitude": "35.535106",
        "longitude": "60.030846",
        "province": "خلیل‌آباد"
      },
      {
        "state": "خراسان رضوی",
        "city": "قاسم‌آباد",
        "latitude": "35.675227",
        "longitude": "59.4966158",
        "province": "خواف"
      },
      {
        "state": "خراسان رضوی",
        "city": "خواف",
        "latitude": "34.5723166",
        "longitude": "60.1440373",
        "province": "خواف"
      },
      {
        "state": "خراسان رضوی",
        "city": "نوخندان",
        "latitude": "37.5200945",
        "longitude": "58.9893154",
        "province": "درگز"
      },
      {
        "state": "خراسان رضوی",
        "city": "درگز",
        "latitude": "37.4470313",
        "longitude": "59.1064876",
        "province": "درگز"
      },
      {
        "state": "خراسان رضوی",
        "city": "چاپشلو",
        "province": "درگز",
        "latitude": "37.3514931",
        "longitude": "59.0774864"
      },
      {
        "state": "خراسان رضوی",
        "city": "لطف آباد",
        "latitude": "36.631111",
        "longitude": "57.600833",
        "province": "درگز"
      },
      {
        "state": "خراسان رضوی",
        "city": "دولت‌آباد",
        "latitude": "36.4371492",
        "longitude": "59.1666169",
        "province": "زاوه"
      },
      {
        "state": "خراسان رضوی",
        "city": "رودآب",
        "province": "سبزوار",
        "latitude": "36.026923",
        "longitude": "57.318007"
      },
      {
        "state": "خراسان رضوی",
        "city": "باجگیران",
        "latitude": "37.622419",
        "longitude": "58.418449",
        "province": "قوچان"
      },
      {
        "state": "خراسان رضوی",
        "city": "کلات",
        "latitude": "36.995338",
        "longitude": "59.753716",
        "province": "کلات"
      },
      {
        "state": "خراسان رضوی",
        "city": "شادمهر",
        "latitude": "35.171351",
        "longitude": "59.036677",
        "province": "مه‌ولات"
      },
      {
        "state": "خراسان رضوی",
        "city": "فیض‌آباد",
        "latitude": "35.014390",
        "longitude": "58.777778",
        "province": "مه‌ولات"
      },
      {
        "state": "خراسان رضوی",
        "city": "دوغارون",
        "latitude": "34.713795",
        "longitude": "60.990745",
        "province": "دوغارون"
      },
      {
        "state": "خراسان رضوی",
        "city": "رشتخوار",
        "latitude": "34.974722",
        "longitude": "59.623611",
        "province": "رشتخوار"
      },
      {
        "state": "خراسان رضوی",
        "city": "جنگل",
        "latitude": "34.703244",
        "longitude": "59.221641",
        "province": "رشتخوار"
      },
      {
        "state": "خراسان رضوی",
        "city": "نقاب",
        "latitude": "36.7105093",
        "longitude": "57.4086684",
        "province": "جوین"
      },
      {
        "state": "خراسان رضوی",
        "city": "حکم آباد",
        "latitude": "36.631111",
        "longitude": "57.600833",
        "province": "جوین"
      },
      {
        "state": "خراسان شمالی",
        "city": "بجنورد",
        "latitude": "37.475",
        "longitude": "57.333333",
        "province": "بجنورد"
      },
      {
        "state": "خراسان شمالی",
        "city": "اسفراین",
        "latitude": "37.076389",
        "longitude": "57.51",
        "province": "اسفراین"
      },
      {
        "state": "خراسان شمالی",
        "city": "فاروج",
        "latitude": "37.231111",
        "longitude": "58.218889",
        "province": "فاروج"
      },
      {
        "state": "خراسان شمالی",
        "city": "شیروان",
        "latitude": "37.4092357",
        "longitude": "57.9276184",
        "province": "شیروان"
      },
      {
        "state": "خراسان شمالی",
        "city": "آشخانه",
        "latitude": "37.554102",
        "longitude": "56.925917",
        "province": "مانه و سملقان"
      },
      {
        "state": "خراسان شمالی",
        "city": "صفی‌آباد",
        "latitude": "36.693715",
        "longitude": "57.930179",
        "province": "اسفراین"
      },
      {
        "state": "خراسان شمالی",
        "city": "حصار گرم‌خان",
        "province": "بجنورد",
        "latitude": "37.519483",
        "longitude": "57.482686"
      },
      {
        "state": "خراسان شمالی",
        "city": "راز",
        "province": "بجنورد",
        "latitude": "37.935566",
        "longitude": "57.105989"
      },
      {
        "state": "خراسان شمالی",
        "city": "سنخواست",
        "latitude": "37.100508",
        "longitude": "56.856952",
        "province": "جاجرم"
      },
      {
        "state": "خراسان شمالی",
        "city": "جاجرم",
        "latitude": "36.950000",
        "longitude": "56.380000",
        "province": "جاجرم"
      },
      {
        "state": "خراسان شمالی",
        "city": "لوجلی",
        "latitude": "37.600000",
        "longitude": "57.850000",
        "province": "شیروان"
      },
      {
        "state": "خراسان شمالی",
        "city": "درق",
        "latitude": "36.970346",
        "longitude": "56.206334",
        "province": "گرمه"
      },
      {
        "state": "خراسان شمالی",
        "city": "گرمه",
        "latitude": "36.998739",
        "longitude": "56.302761",
        "province": "گرمه"
      },
      {
        "state": "خراسان شمالی",
        "city": "پیش‌قلعه",
        "latitude": "37.651503",
        "longitude": "56.993904",
        "province": "مانه و سملقان"
      },
      {
        "state": "خراسان شمالی",
        "city": "شعبان",
        "latitude": "37.469905",
        "longitude": "57.314174",
        "province": "شعبان"
      },
      {
        "state": "خوزستان",
        "city": "اهواز",
        "latitude": "31.3183272",
        "longitude": "48.6706187",
        "province": "اهواز"
      },
      {
        "state": "خوزستان",
        "city": "کوت عبدالله",
        "latitude": "31.236946",
        "longitude": "48.656130",
        "province": "کارون"
      },
      {
        "state": "خوزستان",
        "city": "هندیجان",
        "latitude": "30.238341",
        "longitude": "49.705968",
        "province": "هندیجان"
      },
      {
        "state": "خوزستان",
        "city": "آبادان",
        "latitude": "30.348326",
        "longitude": "48.293828",
        "province": "آبادان"
      },
      {
        "state": "خوزستان",
        "city": "خرمشهر",
        "latitude": "30.424768",
        "longitude": "48.185351",
        "province": "خرمشهر"
      },
      {
        "state": "خوزستان",
        "city": "شلمچه",
        "latitude": "30.512810",
        "longitude": "48.027896",
        "province": "خرمشهر"
      },
      {
        "state": "خوزستان",
        "city": "بندر امام خمینی ره",
        "latitude": "30.448792",
        "longitude": "49.072745",
        "province": "بندر ماهشهر"
      },
      {
        "state": "خوزستان",
        "city": "شادگان",
        "latitude": "30.654708",
        "longitude": "48.654242",
        "province": "شادگان"
      },
      {
        "state": "خوزستان",
        "city": "دارخوین",
        "latitude": "30.740025",
        "longitude": "48.433614",
        "province": "شادگان"
      },
      {
        "state": "خوزستان",
        "city": "ماهشهر",
        "latitude": "30.561553",
        "longitude": "49.174323",
        "province": "بندر ماهشهر"
      },
      {
        "state": "خوزستان",
        "city": "بهبهان",
        "latitude": "30.590222",
        "longitude": "50.235136",
        "province": "بهبهان"
      },
      {
        "state": "خوزستان",
        "city": "امیدیه",
        "latitude": "30.760341",
        "longitude": "49.701483",
        "province": "امیدیه"
      },
      {
        "state": "خوزستان",
        "city": "رامهرمز",
        "latitude": "31.277735",
        "longitude": "49.598809",
        "province": "رامهرمز"
      },
      {
        "state": "خوزستان",
        "city": "باغ‌ملک",
        "latitude": "31.525834",
        "longitude": "49.890161",
        "province": "باغ‌ملک"
      },
      {
        "state": "خوزستان",
        "city": "اروندکنار",
        "latitude": "30.061830",
        "longitude": "48.453658",
        "province": "آبادان"
      },
      {
        "state": "خوزستان",
        "city": "سوسنگرد",
        "latitude": "31.556703",
        "longitude": "48.170071",
        "province": "دشت آزادگان"
      },
      {
        "state": "خوزستان",
        "city": "حمیدیه",
        "latitude": "31.477761",
        "longitude": "48.433571",
        "province": "حمیدیه"
      },
      {
        "state": "خوزستان",
        "city": "بستان",
        "latitude": "31.712852",
        "longitude": "48.002638",
        "province": "دشت آزادگان"
      },
      {
        "state": "خوزستان",
        "city": "هویزه",
        "latitude": "31.467596",
        "longitude": "48.075335",
        "province": "هویزه"
      },
      {
        "state": "خوزستان",
        "city": "ایذه",
        "latitude": "31.823493",
        "longitude": "49.869690",
        "province": "ایذه"
      },
      {
        "state": "خوزستان",
        "city": "دهدز",
        "latitude": "31.823493",
        "longitude": "50.294466",
        "province": "ایذه"
      },

      {
        "state": "خوزستان",
        "city": "مسجد سلیمان",
        "latitude": "31.936389",
        "longitude": "49.303889",
        "province": "مسجد سلیمان"
      },
      {
        "state": "خوزستان",
        "city": "شوشتر",
        "latitude": "32.052085",
        "longitude": "48.849722",
        "province": "شوشتر"
      },
      {
        "state": "خوزستان",
        "city": "ملاثانی",
        "latitude": "31.582792",
        "longitude": "48.886972",
        "province": "باوی"
      },
      {
        "state": "خوزستان",
        "city": "شوش",
        "latitude": "32.195658",
        "longitude": "48.253756",
        "province": "شوش"
      },
      {
        "state": "خوزستان",
        "city": "گتوند",
        "latitude": "32.243753",
        "longitude": "48.809252",
        "province": "گتوند"
      },
      {
        "state": "خوزستان",
        "city": "لالی",
        "latitude": "32.328889",
        "longitude": "49.093611",
        "province": "لالی"
      },
      {
        "state": "خوزستان",
        "city": "دزفول",
        "latitude": "32.3830777",
        "longitude": "48.4235841",
        "province": "دزفول"
      },
      {
        "state": "خوزستان",
        "city": "اندیمشک",
        "latitude": 32.46,
        "longitude": 48.359167,
        "province": "اندیمشک"
      },
      {
        "state": "خوزستان",
        "city": "صیدون",
        "latitude": "31.364923",
        "longitude": "50.075254",
        "province": "باغ‌ملک"
      },
      {
        "state": "خوزستان",
        "city": "مینوشهر",
        "latitude": "30.352953",
        "longitude": "48.215451",
        "province": "خرمشهر"
      },
      {
        "state": "خوزستان",
        "city": "میانرود",
        "latitude": "32.151171",
        "longitude": "48.441360",
        "province": "دزفول"
      },
      {
        "state": "خوزستان",
        "city": "حر ریاحی",
        "latitude": "32.143605",
        "longitude": "48.389196",
        "province": "شوش"
      },
      {
        "state": "خوزستان",
        "city": "چمران",
        "latitude": "30.707295",
        "longitude": "49.159817",
        "province": "ماهشهر"
      },
      {
        "state": "خوزستان",
        "city": "هفتگل",
        "latitude": "30.707295",
        "longitude": "49.159817",
        "province": "هفتگل"
      },
      {
        "state": "خوزستان",
        "city": "رامشیر",
        "latitude": "30.895778",
        "longitude": "49.408779",
        "province": "رامشیر"
      },
      {
        "state": "خوزستان",
        "city": "دشت آزادگان",
        "latitude": "31.557664",
        "longitude": "48.180436",
        "province": "&nbsp;"
      },
      {
        "state": "خوزستان",
        "city": "چذابه",
        "latitude": "31.854645",
        "longitude": "47.802000",
        "province": "چذابه"
      },
      {
        "state": "خوزستان",
        "city": "اندیکا",
        "latitude": "32.206229",
        "longitude": "49.447781",
        "province": "اندیکا"
      },
      {
        "state": "خوزستان",
        "city": "قلعه خواجه",
        "latitude": "32.204799",
        "longitude": "49.446391",
        "province": "اندیکا"
      },
      {
        "state": "زنجان",
        "city": "زنجان",
        "latitude": "36.682652",
        "longitude": "48.509018",
        "province": "زنجان"
      },
      {
        "state": "زنجان",
        "city": "قیدار",
        "latitude": "36.119876",
        "longitude": "48.595362",
        "province": "خدابنده"
      },
      {
        "state": "زنجان",
        "city": "ابهر",
        "latitude": "36.151988",
        "longitude": "49.237698",
        "province": "ابهر"
      },
      {
        "state": "زنجان",
        "city": "صایین قلعه",
        "latitude": "36.302667",
        "longitude": "49.073464",
        "province": "ابهر"
      },

      {
        "state": "زنجان",
        "city": "دندی",
        "latitude": "36.5541697",
        "longitude": "47.6207573",
        "province": "ماه‌نشان"
      },
      {
        "state": "زنجان",
        "city": "ماه‌نشان",
        "latitude": "36.7456508",
        "longitude": "47.6716751",
        "province": "ماه‌نشان"
      },
      {
        "state": "زنجان",
        "city": "ارمغان‌خانه",
        "latitude": "36.975900",
        "longitude": "48.369627",
        "province": "زنجان"
      },
      {
        "state": "زنجان",
        "city": "سجاس",
        "latitude": "36.2402834",
        "longitude": "48.5530842",
        "province": "خدابنده"
      },
      {
        "state": "زنجان",
        "city": "سهرورد",
        "latitude": "36.0705985",
        "longitude": "48.4423918",
        "province": "خدابنده"
      },
      {
        "state": "زنجان",
        "city": "آب‌بر",
        "latitude": "36.9258587",
        "longitude": "48.953276",
        "province": "طارم"
      },
      {
        "state": "زنجان",
        "city": "خرمدره",
        "latitude": "36.20354",
        "longitude": "49.1881871",
        "province": "خرمدره"
      },
      {
        "state": "زنجان",
        "city": "سلطانیه",
        "province": "سلطانیه",
        "latitude": "36.4345194",
        "longitude": "48.7940806"
      },
      {
        "state": "زنجان",
        "city": "هیدج",
        "province": "هیدج",
        "latitude": "36.2520936",
        "longitude": "49.1302561"
      },
      {
        "state": "زنجان",
        "city": "زرین آباد",
        "latitude": "36.4284545",
        "longitude": "48.2816192",
        "province": "ایجرود"
      },
      {
        "state": "زنجان",
        "city": "حلب",
        "latitude": "36.2955098",
        "longitude": "48.0597202",
        "province": "ایجرود"
      },
      {
        "state": "سمنان",
        "city": "سمنان",
        "latitude": "35.5834074",
        "longitude": "53.3882906",
        "province": "سمنان"
      },
      {
        "state": "سمنان",
        "city": "سرخه",
        "latitude": "35.4638851",
        "longitude": "53.2135038",
        "province": "سرخه"
      },
      {
        "state": "سمنان",
        "city": "شهمیرزاد",
        "latitude": "35.7735069",
        "longitude": "53.3279767",
        "province": "مهدی‌شهر"
      },
      {
        "state": "سمنان",
        "city": "دامغان",
        "latitude": "36.167451",
        "longitude": "54.3379993",
        "province": "دامغان"
      },
      {
        "state": "سمنان",
        "city": "شاهرود",
        "latitude": "36.4195026",
        "longitude": "54.9649915",
        "province": "شاهرود"
      },
      {
        "state": "سمنان",
        "city": "بیارجمند",
        "province": "بیارجمند",
        "latitude": "36.0790243",
        "longitude": "55.8098841"
      },
      {
        "state": "سمنان",
        "city": "بسطام",
        "latitude": "36.4827556",
        "longitude": "55.0010717",
        "province": "شاهرود"
      },
      {
        "state": "سمنان",
        "city": "مجن",
        "latitude": "36.4796519",
        "longitude": "54.6483772",
        "province": "شاهرود"
      },
      {
        "state": "سمنان",
        "city": "کلاته خیج",
        "latitude": "36.674407",
        "longitude": "55.299747",
        "province": "شاهرود"
      },
      {
        "state": "سمنان",
        "city": "درجزین",
        "latitude": "35.6539439",
        "longitude": "53.3379876",
        "province": "مهدی‌شهر"
      },
      {
        "state": "سمنان",
        "city": "مهدی‌شهر",
        "latitude": "35.7108029",
        "longitude": "53.3555769",
        "province": "مهدی‌شهر"
      },
      {
        "state": "سمنان",
        "city": "گرمسار",
        "latitude": "35.2222875",
        "longitude": "52.3383855",
        "province": "گرمسار"
      },
      {
        "state": "سمنان",
        "city": "ایوانکی",
        "latitude": "35.3439147",
        "longitude": "52.069887",
        "province": "گرمسار"
      },
      {
        "state": "سمنان",
        "city": "آرادان",
        "latitude": "35.2478246",
        "longitude": "52.4928417",
        "province": "گرمسار"
      },
      {
        "state": "سمنان",
        "city": "میامی",
        "latitude": "36.412914",
        "longitude": "55.649778",
        "province": "میامی"
      },
      {
        "state": "سمنان",
        "city": "فرومد (فریومد)",
        "latitude": "36.510898",
        "longitude": "56.752983",
        "province": "میامی"
      },


      {
        "state": "سیستان و بلوچستان",
        "city": "زاهدان",
        "latitude": "30.9641959",
        "longitude": "61.6805203",
        "province": "زاهدان"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "زابلی",
        "latitude": "27.1310393",
        "longitude": "61.6746528",
        "province": "سراوان"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "بمپور",
        "latitude": "27.1941781",
        "longitude": "60.4554816",
        "province": "ایرانشهر"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "ایرانشهر",
        "latitude": "27.2069903",
        "longitude": "60.6882515",
        "province": "ایرانشهر"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "سراوان",
        "latitude": "27.3651673",
        "longitude": "62.3390963",
        "province": "سراوان"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "چابهار",
        "latitude": "25.2935488",
        "longitude": "60.6469115",
        "province": "چابهار"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "کنارک",
        "latitude": "25.403710",
        "longitude": "60.374425",
        "province": "چابهار "
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "نگور",
        "latitude": "25.3889117",
        "longitude": "61.1390842",
        "province": "چابهار"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "خاش",
        "latitude": "28.2203911",
        "longitude": "61.2137052",
        "province": "خاش"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "میرجاوه",
        "latitude": "29.0149246",
        "longitude": "61.4540744",
        "province": "زاهدان"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "ریمدان",
        "province": "ریمدان",
        "latitude": "25.408223",
        "longitude": "61.449737"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "مرز کوهک",
        "province": "مرز کوهک",
        "latitude": "27.135739",
        "longitude": "63.247844"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "زابل",
        "latitude": "31.028611",
        "longitude": "61.501111",
        "province": "زابل"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "بزمان",
        "province": "ایرانشهر",
        "latitude": "27.850547",
        "longitude": "60.1736164"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "نوک‌آباد",
        "province": "خاش",
        "latitude": "28.5400131",
        "longitude": "60.7597704"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "گلمورتی",
        "latitude": "27.4809916",
        "longitude": "59.4483063",
        "province": "دلگان"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "دلگان",
        "latitude": "25.4838513",
        "longitude": "61.2451589",
        "province": "دلگان"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "ادیمی",
        "latitude": "31.1159553",
        "longitude": "61.4082693",
        "province": "زابل"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "بنجار",
        "latitude": "31.0428989",
        "longitude": "61.5682749",
        "province": "زابل"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "دوست‌محمد",
        "latitude": "31.1427915",
        "longitude": "61.7909563",
        "province": "زابل"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "محمدآباد",
        "latitude": "30.886775",
        "longitude": "61.463721",
        "province": "زابل"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "نصرت‌آباد",
        "latitude": "29.8589189",
        "longitude": "59.9802973",
        "province": "زاهدان"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "زهک",
        "province": "زهک",
        "latitude": "30.8932189",
        "longitude": "61.6827311"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "جالق",
        "latitude": "27.6033419",
        "longitude": "62.7097131",
        "province": "سراوان"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "سوران",
        "latitude": "27.2871579",
        "longitude": "61.9997051",
        "province": "سراوان"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "راسک",
        "latitude": "26.2368044",
        "longitude": "61.3987716",
        "province": "سرباز"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "سرباز",
        "latitude": "26.6321167",
        "longitude": "61.2570288",
        "province": "سرباز"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "پیشین",
        "latitude": "26.076303",
        "longitude": "61.730676",
        "province": "سرباز"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "اسپکه",
        "latitude": "26.834773",
        "longitude": "60.173321",
        "province": "نیک‌شهر"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "بنت",
        "latitude": "26.290834",
        "longitude": "59.5237216",
        "province": "نیک‌شهر"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "فنوج",
        "latitude": "26.575768",
        "longitude": "59.6398773",
        "province": "نیک‌شهر"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "قصرقند",
        "latitude": "26.2394578",
        "longitude": "60.7419235",
        "province": "نیک‌شهر"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "نیک‌شهر",
        "latitude": "26.2259692",
        "longitude": "60.2161966",
        "province": "نیک‌شهر"
      },
      {
        "state": "سیستان و بلوچستان",
        "city": "مرز میلک",
        "province": "مرز میلک",
        "latitude": "30.971159",
        "longitude": "61.810601"
      },
      {
        "state": "فارس",
        "city": "شیراز",
        "latitude": "29.6060218",
        "longitude": "52.5378041",
        "province": "شیراز"
      },
      {
        "state": "فارس",
        "city": "اشکنان",
        "latitude": "27.2218581",
        "longitude": "53.6163045",
        "province": "لامرد"
      },
      {
        "state": "فارس",
        "city": "لامرد",
        "latitude": "27.333426",
        "longitude": "53.1816105",
        "province": "لامرد"
      },
      {
        "state": "فارس",
        "city": "بیرم",
        "latitude": "27.4298807",
        "longitude": "53.5141478",
        "province": "لارستان"
      },
      {
        "state": "فارس",
        "city": "علامرودشت",
        "latitude": "27.6248362",
        "longitude": "52.9976097",
        "province": "لامرد"
      },
      {
        "state": "فارس",
        "city": "لار",
        "latitude": "27.6619203",
        "longitude": "54.3229561",
        "province": "لارستان"
      },
      {
        "state": "فارس",
        "city": "گراش",
        "province": "گراش",
        "latitude": "27.6701538",
        "longitude": "54.1378384"
      },
      {
        "state": "فارس",
        "city": "اِوَز",
        "province": "لارستان",
        "latitude": "27.762588",
        "longitude": "54.005998"
      },
      {
        "state": "فارس",
        "city": "خنج",
        "latitude": "27.8899259",
        "longitude": "53.4367822",
        "province": "&nbsp;"
      },
      {
        "state": "فارس",
        "city": "بنارویه",
        "province": "لارستان",
        "latitude": "28.0832919",
        "longitude": "54.0467988"
      },
      {
        "state": "فارس",
        "city": "زرقان",
        "province": "زرقان",
        "latitude": "29.7788503",
        "longitude": "52.7185108"
      },
      {
        "state": "فارس",
        "city": "قیر",
        "latitude": "28.482802",
        "longitude": "53.0357558",
        "province": "قیر و کارزین"
      },
      {
        "state": "فارس",
        "city": "جهرم",
        "latitude": "28.4961762",
        "longitude": "53.5593366",
        "province": "جهرم"
      },
      {
        "state": "فارس",
        "city": "فیروزآباد",
        "latitude": "28.845604",
        "longitude": "52.5727236",
        "province": "فیروزآباد"
      },
      {
        "state": "فارس",
        "city": "میمند",
        "latitude": "28.8664357",
        "longitude": "52.7485571",
        "province": "فیروزآباد"
      },
      {
        "state": "فارس",
        "city": "استهبان",
        "latitude": "29.1252321",
        "longitude": "54.0405113",
        "province": "استهبان"
      },
      {
        "state": "فارس",
        "city": "نی‌ریز",
        "province": "نی‌ریز",
        "latitude": "29.1972504",
        "longitude": "54.3267782"
      },
      {
        "state": "فارس",
        "city": "فسا",
        "latitude": "28.9366395",
        "longitude": "53.6510677",
        "province": "فسا"
      },
      {
        "state": "فارس",
        "city": "مرودشت",
        "latitude": "29.8762905",
        "longitude": "52.8062895",
        "province": "مرودشت"
      },
      {
        "state": "فارس",
        "city": "ارسنجان",
        "latitude": "29.914968",
        "longitude": "53.3089761",
        "province": "ارسنجان"
      },
      {
        "state": "فارس",
        "city": "نورآباد ممسنی",
        "latitude": "30.1154071",
        "longitude": "51.5229633",
        "province": "نورآباد ممسنی"
      },
      {
        "state": "فارس",
        "city": "نورآباد",
        "latitude": "30.1154071",
        "longitude": "51.5229633",
        "province": "ممسنی"
      },
      {
        "state": "فارس",
        "city": "کامفیروز",
        "latitude": "30.3222845",
        "longitude": "52.1932593",
        "province": "مرودشت"
      },
      {
        "state": "فارس",
        "city": "اردکان(فارس)",
        "latitude": "30.2425282",
        "longitude": "51.9924185",
        "province": "سپیدان"
      },
      {
        "state": "فارس",
        "city": "سپیدان",
        "latitude": "30.2623521",
        "longitude": "51.9836519",
        "province": "سپیدان"
      },
      {
        "state": "فارس",
        "city": "اقلید",
        "latitude": "30.8925778",
        "longitude": "52.688496",
        "province": "اقلید"
      },
      {
        "state": "فارس",
        "city": "آباده",
        "latitude": "31.1627056",
        "longitude": "52.6490454",
        "province": "آباده"
      },
      {
        "state": "فارس",
        "city": "ایزدخواست",
        "province": "آباده",
        "latitude": "31.5158438",
        "longitude": "52.1247911"
      },
      {
        "state": "فارس",
        "city": "بهمن",
        "province": "آباده",
        "latitude": "31.192208",
        "longitude": "52.486238"
      },
      {
        "state": "فارس",
        "city": "سورمق",
        "province": "آباده",
        "latitude": "31.0338723",
        "longitude": "52.8397513"
      },
      {
        "state": "فارس",
        "city": "صغاد",
        "province": "آباده",
        "latitude": "31.1915603",
        "longitude": "52.5155699"
      },
      {
        "state": "فارس",
        "city": "سوریان",
        "latitude": "30.455501",
        "longitude": "53.6503459682006",
        "province": "بوانات"
      },
      {
        "state": "فارس",
        "city": "بوانات",
        "latitude": "30.4828728",
        "longitude": "53.6003784",
        "province": "بوانات"
      },
      {
        "state": "فارس",
        "city": "باب انار",
        "latitude": "28.9621588",
        "longitude": "53.2168427",
        "province": "جهرم"
      },
      {
        "state": "فارس",
        "city": "خاوران",
        "latitude": "28.937829",
        "longitude": "53.3147706",
        "province": "جهرم"
      },
      {
        "state": "فارس",
        "city": "قطب‌آباد",
        "latitude": "28.6393017",
        "longitude": "53.6378046",
        "province": "جهرم"
      },
      {
        "state": "فارس",
        "city": "شهر خنج",
        "latitude": "27.891389",
        "longitude": "53.434444",
        "province": "خنج"
      },
      {
        "state": "فارس",
        "city": "جنت‌شهر",
        "latitude": "28.6548665",
        "longitude": "54.6837567",
        "province": "داراب"
      },
      {
        "state": "فارس",
        "city": "داراب",
        "latitude": "28.753194",
        "longitude": "54.548149",
        "province": "داراب"
      },
      {
        "state": "فارس",
        "city": "رستم",
        "latitude": "29.749727",
        "longitude": "51.540769",
        "province": "رستم"
      },
      {
        "state": "فارس",
        "city": "ششده",
        "latitude": "28.927610",
        "longitude": "54.051518",
        "province": "فسا"
      },
      {
        "state": "فارس",
        "city": "بالاده",
        "latitude": "29.2869221",
        "longitude": "51.9394109",
        "province": "کازرون"
      },
      {
        "state": "فارس",
        "city": "خشت",
        "latitude": "29.5679441",
        "longitude": "51.3395311",
        "province": "کازرون"
      },
      {
        "state": "فارس",
        "city": "قائمیه",
        "latitude": "29.8510025",
        "longitude": "51.5819119",
        "province": "کازرون"
      },
      {
        "state": "فارس",
        "city": "نودان",
        "latitude": "29.8019495",
        "longitude": "51.6935995",
        "province": "کازرون"
      },
      {
        "state": "فارس",
        "city": "کنارتخته",
        "latitude": "29.5327812",
        "longitude": "51.3960796",
        "province": "کازرون"
      },
      {
        "state": "فارس",
        "city": "کازرون",
        "latitude": "29.6203251",
        "longitude": "51.6520826",
        "province": "کازرون"
      },
      {
        "state": "فارس",
        "city": "کَوار",
        "province": "کوار",
        "latitude": "29.207177",
        "longitude": "52.683049"
      },
      {
        "state": "فارس",
        "city": "مرکزی گراش",
        "province": "گراش",
        "latitude": "27.668032",
        "longitude": "54.141011"
      },
      {
        "state": "فارس",
        "city": "خور",
        "province": "لارستان",
        "latitude": "27.6399501",
        "longitude": "54.3422031"
      },
      {
        "state": "فارس",
        "city": "اَهِل",
        "latitude": "27.212769",
        "longitude": "53.664157",
        "province": "لامرد"
      },
      {
        "state": "فارس",
        "city": "خومه‌زار",
        "province": "ممسنی",
        "latitude": "30.0090201",
        "longitude": "51.5737978"
      },
      {
        "state": "فارس",
        "city": "مُهر",
        "province": "مهر",
        "latitude": "27.519610",
        "longitude": "52.858868"
      },
      {
        "state": "فارس",
        "city": "وراوی",
        "province": "مهر",
        "latitude": "27.4668628",
        "longitude": "53.0501495"
      },
      {
        "state": "فارس",
        "city": "گله‌دار",
        "province": "مهر",
        "latitude": "30.3553658",
        "longitude": "53.3927669"
      },
      {
        "state": "فارس",
        "city": "خرامه",
        "province": "خرامه",
        "latitude": "29.498294",
        "longitude": "53.3122486"
      },
      {
        "state": "فارس",
        "city": "سعادت شهر",
        "province": "سعادت شهر",
        "latitude": "30.0797928",
        "longitude": "53.1358118"
      },
      {
        "state": "فارس",
        "city": "فراشبند",
        "latitude": "28.8553783",
        "longitude": "52.0946443",
        "province": "فراشبند"
      },
      {
        "state": "فارس",
        "city": "صفاشهر",
        "province": "خرم بید",
        "latitude": "30.6120886",
        "longitude": "53.1952146"
      },
      {
        "state": "فارس",
        "city": "قادرآباد",
        "province": "خرم بید",
        "latitude": "30.2742465",
        "longitude": "53.2686602"
      },
      {
        "state": "فارس",
        "city": "دهنو",
        "province": "زرین دشت",
        "latitude": "29.2191311",
        "longitude": "53.1822693"
      },
      {
        "state": "فارس",
        "city": "دبیران",
        "province": "زرین دشت",
        "latitude": "28.4064149",
        "longitude": "54.1884143"
      },
      {
        "state": "فارس",
        "city": "حاجی آباد",
        "province": "زرین دشت",
        "latitude": "28.360280",
        "longitude": "54.415108"
      },
      {
        "state": "فارس",
        "city": "زرین دشت",
        "province": "زرین دشت",
        "latitude": "28.354451",
        "longitude": "54.417138"
      },
      {
        "state": "فارس",
        "city": "شهر پیر",
        "province": "زرین دشت",
        "latitude": "28.3116705",
        "longitude": "54.3351822"
      },
      {
        "state": "فارس",
        "city": "سروستان",
        "province": "سروستان",
        "latitude": "29.273611",
        "longitude": "53.220278"
      },

      {
        "state": "فارس",
        "city": "کوهنجان",
        "province": "سروستان",
        "latitude": "29.230833",
        "longitude": "52.955278"
      },
      {
        "state": "قزوین",
        "city": "قزوین",
        "latitude": "36.1865866",
        "longitude": "50.064134",
        "province": "قزوین"
      },
      {
        "state": "قزوین",
        "city": "تاکستان",
        "latitude": "36.0726006",
        "longitude": "49.6937027",
        "province": "تاکستان"
      },
      {
        "state": "قزوین",
        "city": "الوند",
        "latitude": "36.1865866",
        "longitude": "50.064134",
        "province": "البرز"
      },
      {
        "state": "قزوین",
        "city": "خاکعلی",
        "province": "آبیک",
        "latitude": "36.1285497",
        "longitude": "50.1758838"
      },
      {
        "state": "قزوین",
        "city": "آبیک",
        "province": "آبیک",
        "latitude": "36.0416927",
        "longitude": "50.5320519"
      },
      {
        "state": "قزوین",
        "city": "ارداق",
        "latitude": "36.0531207",
        "longitude": "49.8249049",
        "province": "بوئین‌زهرا"
      },
      {
        "state": "قزوین",
        "city": "بوئین‌زهرا",
        "latitude": "35.7679957",
        "longitude": "50.0579667",
        "province": "بوئین‌زهرا"
      },
      {
        "state": "قزوین",
        "city": "شال",
        "latitude": "35.8980371",
        "longitude": "49.7700946",
        "province": "بوئین‌زهرا"
      },
      {
        "state": "قزوین",
        "city": "اسفرورین",
        "latitude": "35.9353304",
        "longitude": "49.7479887",
        "province": "تاکستان"
      },
      {
        "state": "قزوین",
        "city": "نرجه",
        "latitude": "35.9909852",
        "longitude": "49.6245427",
        "province": "تاکستان"
      },
      {
        "state": "قزوین",
        "city": "محمودآباد نمونه",
        "latitude": "36.2898869",
        "longitude": "49.9005962",
        "province": "قزوین"
      },
      {
        "state": "قزوین",
        "city": "کوهین",
        "latitude": "36.3701265",
        "longitude": "49.6631317",
        "province": "قزوین"
      },
      {
        "state": "قزوین",
        "city": "آوج",
        "province": "آوج",
        "latitude": "35.5787119",
        "longitude": "49.2235344"
      },
      {
        "state": "قزوین",
        "city": "آبگرم",
        "province": "آوج",
        "latitude": "35.7572894",
        "longitude": "49.2849077"
      },
      {
        "state": "قم",
        "city": "قم",
        "latitude": "34.6423117",
        "longitude": "50.8800969",
        "province": "قم"
      },
      {
        "state": "قم",
        "city": "دستجرد",
        "latitude": "34.551944",
        "longitude": "50.248333",
        "province": "قم"
      },
      {
        "state": "قم",
        "city": "سلفچگان",
        "latitude": "34.4783955",
        "longitude": "50.4577101",
        "province": "قم"
      },
      {
        "state": "کردستان",
        "city": "سنندج",
        "latitude": "35.3126047",
        "longitude": "46.9978639",
        "province": "سنندج"
      },
      {
        "state": "کردستان",
        "city": "قروه",
        "latitude": "35.1679005",
        "longitude": "47.800886",
        "province": "قروه"
      },
      {
        "state": "کردستان",
        "city": "مریوان",
        "latitude": "35.5219063",
        "longitude": "46.1758889",
        "province": "مریوان"
      },
      {
        "state": "کردستان",
        "city": "بیجار",
        "latitude": "35.8729607",
        "longitude": "47.6027902",
        "province": "بیجار"
      },
      {
        "state": "کردستان",
        "city": "بانه",
        "latitude": "35.9946631",
        "longitude": "45.8843225",
        "province": "بانه"
      },
      {
        "state": "کردستان",
        "city": "صاحب",
        "latitude": "36.2017503",
        "longitude": "46.4610855",
        "province": "سقز"
      },
      {
        "state": "کردستان",
        "city": "سقز",
        "latitude": "36.2427456",
        "longitude": "46.2705227",
        "province": "سقز"
      },
      {
        "state": "کردستان",
        "city": "بابارشانی",
        "latitude": "35.6791869",
        "longitude": "47.7983782",
        "province": "بیجار"
      },
      {
        "state": "کردستان",
        "city": "دهگلان",
        "latitude": "35.280039",
        "longitude": "47.4189871",
        "province": "دهگلان"
      },
      {
        "state": "کردستان",
        "city": "زرینه",
        "latitude": "36.0602",
        "longitude": "47.1508",
        "province": "دیواندره"
      },
      {
        "state": "کردستان",
        "city": "دیواندره",
        "latitude": "35.9159662",
        "longitude": "47.0193315",
        "province": "دیواندره"
      },
      {
        "state": "کردستان",
        "city": "شویشه",
        "latitude": "35.3570893",
        "longitude": "46.676496",
        "province": "سنندج"
      },
      {
        "state": "کردستان",
        "city": "سریش آباد",
        "province": "قروه",
        "latitude": "35.2478257",
        "longitude": "47.778892"
      },
      {
        "state": "کردستان",
        "city": "چناره",
        "latitude": "36.1443",
        "longitude": "46.572",
        "province": "مریوان"
      },
      {
        "state": "کردستان",
        "city": "کامیاران",
        "latitude": "34.7975071",
        "longitude": "46.9362721",
        "province": "کامیاران"
      },
      {
        "state": "کردستان",
        "city": "باشماق",
        "province": "باشماق",
        "latitude": "36.0716",
        "longitude": "46.7087"
      },
      {
        "state": "کردستان",
        "city": "سروآباد",
        "province": "سروآباد",
        "latitude": "35.318700",
        "longitude": "46.378200"
      },
      {
        "state": "کردستان",
        "city": "اورامان",
        "province": "سروآباد",
        "latitude": "35.252570",
        "longitude": "46.261192"
      },
      {
        "state": "کرمان",
        "city": "کرمان",
        "latitude": "30.2924085",
        "longitude": "57.0645647",
        "province": "کرمان"
      },
      {
        "state": "کرمان",
        "city": "منوجان",
        "latitude": "27.4014947",
        "longitude": "57.4949725",
        "province": "منوجان"
      },
      {
        "state": "کرمان",
        "city": "جبالبارز",
        "latitude": "28.908836",
        "longitude": "57.885253",
        "province": "جیرفت"
      },
      {
        "state": "کرمان",
        "city": "بروات",
        "latitude": "29.0661863",
        "longitude": "58.404499",
        "province": "بم"
      },
      {
        "state": "کرمان",
        "city": "بم",
        "latitude": "29.1059864",
        "longitude": "58.3565663",
        "province": "بم"
      },
      {
        "state": "کرمان",
        "city": "نرماشیر",
        "latitude": "28.9513934",
        "longitude": "58.6963456",
        "province": "بم"
      },
      {
        "state": "کرمان",
        "city": "نظام‌شهر",
        "latitude": "28.9163336",
        "longitude": "58.5496666",
        "province": "بم"
      },
      {
        "state": "کرمان",
        "city": "بافت",
        "latitude": "29.2340169",
        "longitude": "56.6056569",
        "province": "بافت"
      },
      {
        "state": "کرمان",
        "city": "بزنجان",
        "latitude": "29.2513403",
        "longitude": "56.6995331",
        "province": "بافت"
      },
      {
        "state": "کرمان",
        "city": "رابر",
        "latitude": "29.291562",
        "longitude": "56.912398",
        "province": "رابر"
      },
      {
        "state": "کرمان",
        "city": "قلعه گنج",
        "latitude": "27.5239005",
        "longitude": "57.8771387",
        "province": "قلعه گنج"
      },
      {
        "state": "کرمان",
        "city": "انار",
        "latitude": "30.8724332",
        "longitude": "55.2720954",
        "province": "انار"
      },
      {
        "state": "کرمان",
        "city": "سیرجان",
        "latitude": "29.4447686",
        "longitude": "55.6712851",
        "province": "سیرجان"
      },
      {
        "state": "کرمان",
        "city": "راین",
        "latitude": "29.5981294",
        "longitude": "57.4364877",
        "province": "کرمان"
      },
      {
        "state": "کرمان",
        "city": "پاریز",
        "latitude": "29.8735063",
        "longitude": "55.7493447",
        "province": "سیرجان"
      },
      {
        "state": "کرمان",
        "city": "بردسیر",
        "latitude": "29.9283973",
        "longitude": "56.5717384",
        "province": "بردسیر"
      },
      {
        "state": "کرمان",
        "city": "جوپار",
        "latitude": "30.0602871",
        "longitude": "57.1107791",
        "province": "کرمان"
      },
      {
        "state": "کرمان",
        "city": "باغین",
        "latitude": "30.187107",
        "longitude": "56.8176548",
        "province": "کرمان"
      },
      {
        "state": "کرمان",
        "city": "اختیارآباد",
        "latitude": "30.3276538",
        "longitude": "56.9247177",
        "province": "کرمان"
      },
      {
        "state": "کرمان",
        "city": "رفسنجان",
        "latitude": "30.402184",
        "longitude": "55.9941776",
        "province": "رفسنجان"
      },
      {
        "state": "کرمان",
        "city": "شهداد",
        "latitude": "30.4196387",
        "longitude": "57.7023666",
        "province": "کرمان"
      },
      {
        "state": "کرمان",
        "city": "چترود",
        "latitude": "30.6012065",
        "longitude": "56.9087704",
        "province": "کرمان"
      },
      {
        "state": "کرمان",
        "city": "راور",
        "latitude": "31.2676737",
        "longitude": "56.8069974",
        "province": "راور"
      },
      {
        "state": "کرمان",
        "city": "امین‌شهر",
        "latitude": "30.8419668",
        "longitude": "55.3413062",
        "province": "انار"
      },
      {
        "state": "کرمان",
        "city": "گلزار",
        "latitude": "29.7111348",
        "longitude": "57.0372966",
        "province": "بردسیر"
      },
      {
        "state": "کرمان",
        "city": "جیرفت",
        "latitude": "28.6697367",
        "longitude": "57.7373382",
        "province": "جیرفت"
      },
      {
        "state": "کرمان",
        "city": "بهرمان",
        "latitude": "30.9034647",
        "longitude": "55.7289235",
        "province": "رفسنجان"
      },
      {
        "state": "کرمان",
        "city": "ریحان‌شهر",
        "latitude": "30.7452118",
        "longitude": "56.7310201",
        "province": "زرند"
      },
      {
        "state": "کرمان",
        "city": "زرند",
        "latitude": "30.8134822",
        "longitude": "56.5672432",
        "province": "زرند"
      },
      {
        "state": "کرمان",
        "city": "کوهبنان",
        "latitude": "31.4100681",
        "longitude": "56.2825998",
        "province": "زرند"
      },
      {
        "state": "کرمان",
        "city": "یزدان‌شهر",
        "latitude": "30.8653247",
        "longitude": "56.3647809",
        "province": "زرند"
      },
      {
        "state": "کرمان",
        "city": "زیدآباد",
        "latitude": "29.6004426",
        "longitude": "55.5367771",
        "province": "سیرجان"
      },
      {
        "state": "کرمان",
        "city": "دهج",
        "latitude": "30.6907903",
        "longitude": "54.8777097",
        "province": "شهر بابک"
      },
      {
        "state": "کرمان",
        "city": "شهر بابک",
        "latitude": "30.1191968",
        "longitude": "55.1243149",
        "province": "شهر بابک"
      },
      {
        "state": "کرمان",
        "city": "مردهک",
        "latitude": "28.3601239",
        "longitude": "58.1590145",
        "province": "عنبرآباد"
      },
      {
        "state": "کرمان",
        "city": "عنبرآباد",
        "latitude": "28.4779105",
        "longitude": "57.844051",
        "province": "عنبرآباد"
      },
      {
        "state": "کرمان",
        "city": "فهرج",
        "province": "فهرج",
        "latitude": "28.9454742",
        "longitude": "58.8845357"
      },
      {
        "state": "کرمان",
        "city": "اندوهجرد",
        "latitude": "30.2315368",
        "longitude": "57.751371",
        "province": "کرمان"
      },
      {
        "state": "کرمان",
        "city": "زنگی‌آباد",
        "latitude": "30.4102939",
        "longitude": "56.9155312",
        "province": "کرمان"
      },
      {
        "state": "کرمان",
        "city": "محی‌آباد",
        "latitude": "30.0837663",
        "longitude": "57.162155",
        "province": "کرمان"
      },
      {
        "state": "کرمان",
        "city": "کاظم‌آباد",
        "latitude": "30.5674028",
        "longitude": "56.844081",
        "province": "کرمان"
      },
      {
        "state": "کرمان",
        "city": "نودژ",
        "latitude": "27.511794",
        "longitude": "57.4531218",
        "province": "منوجان"
      },
      {
        "state": "کرمان",
        "city": "فاریاب",
        "province": "فاریاب",
        "latitude": "28.0937638",
        "longitude": "57.2264594"
      },
      {
        "state": "کرمان",
        "city": "کهنوج",
        "latitude": "27.9502255",
        "longitude": "57.7025775",
        "province": "کهنوج"
      },
      {
        "state": "کرمان",
        "city": "ریگان",
        "latitude": "28.6523096",
        "longitude": "59.0196167",
        "province": "ریگان"
      },
      {
        "state": "کرمان",
        "city": "ارزوئیه",
        "province": "ارزوئیه",
        "latitude": "28.4568592",
        "longitude": "56.3634502"
      },
      {
        "state": "کرمانشاه",
        "city": "کرمانشاه",
        "latitude": "34.3239414",
        "longitude": "47.0735891",
        "province": "کرمانشاه"
      },
      {
        "state": "کرمانشاه",
        "city": "سومار",
        "latitude": "33.8862053",
        "longitude": "45.6388242",
        "province": "قصر شیرین"
      },
      {
        "state": "کرمانشاه",
        "city": "نفت شهر",
        "latitude": "33.993356",
        "longitude": "45.497316",
        "province": "قصر شیرین"
      },
      {
        "state": "کرمانشاه",
        "city": "سرمست",
        "province": "گیلان غرب",
        "latitude": "34.0266",
        "longitude": "46.329"
      },
      {
        "state": "کرمانشاه",
        "city": "اسلام‌آباد غرب",
        "latitude": "34.1132923",
        "longitude": "46.5257463",
        "province": "اسلام‌آباد غرب"
      },
      {
        "state": "کرمانشاه",
        "city": "هرسین",
        "latitude": "34.2721",
        "longitude": "47.5861",
        "province": "هرسین"
      },
      {
        "state": "کرمانشاه",
        "city": "بیستون",
        "latitude": "34.3995692",
        "longitude": "47.4448343",
        "province": "هرسین"
      },
      {
        "state": "کرمانشاه",
        "city": "گهواره",
        "latitude": "34.344125",
        "longitude": "46.417181",
        "province": "دالاهو"
      },
      {
        "state": "کرمانشاه",
        "city": "سرپل ذهاب",
        "latitude": "34.4607687",
        "longitude": "45.863763",
        "province": "سرپل ذهاب"
      },
      {
        "state": "کرمانشاه",
        "city": "صحنه",
        "latitude": "34.4812132",
        "longitude": "47.6935934",
        "province": "صحنه"
      },
      {
        "state": "کرمانشاه",
        "city": "کوزران",
        "latitude": "34.4965",
        "longitude": "46.599",
        "province": "کرمانشاه"
      },
      {
        "state": "کرمانشاه",
        "city": "کنگاور",
        "province": "کنگاور",
        "latitude": "34.5051774",
        "longitude": "47.9658794"
      },
      {
        "state": "کرمانشاه",
        "city": "خسروی",
        "province": "خسروی",
        "latitude": "34.3893639",
        "longitude": "45.4728744"
      },
      {
        "state": "کرمانشاه",
        "city": "قصر شیرین",
        "latitude": "34.515594",
        "longitude": "45.5800155",
        "province": "قصر شیرین"
      },
      {
        "state": "کرمانشاه",
        "city": "مرز پرویزخان",
        "latitude": "34.5159031",
        "longitude": "45.5776859",
        "province": "قصر شیرین"
      },
      {
        "state": "کرمانشاه",
        "city": "مرز خسروی",
        "latitude": "34.384015",
        "longitude": "45.468325",
        "province": "قصر شیرین"
      },

      {
        "state": "کرمانشاه",
        "city": "روانسر",
        "latitude": "34.7161309",
        "longitude": "46.6508369",
        "province": "روانسر"
      },
      {
        "state": "کرمانشاه",
        "city": "سنقر",
        "latitude": "34.7832217",
        "longitude": "47.5988073",
        "province": "سنقر"
      },
      {
        "state": "کرمانشاه",
        "city": "جوانرود",
        "latitude": "34.8039724",
        "longitude": "46.4920807",
        "province": "جوانرود"
      },
      {
        "state": "کرمانشاه",
        "city": "پاوه",
        "latitude": "35.0458307",
        "longitude": "46.3622191",
        "province": "پاوه"
      },
      {
        "state": "کرمانشاه",
        "city": "نوسود",
        "latitude": "35.1612676",
        "longitude": "46.2042463",
        "province": "پاوه"
      },
      {
        "state": "کرمانشاه",
        "city": "باینگان",
        "latitude": "34.9813",
        "longitude": "46.2709",
        "province": "پاوه"
      },
      {
        "state": "کرمانشاه",
        "city": "ثلاث باباجانی",
        "latitude": "34.735936",
        "longitude": "46.149391",
        "province": "ثلاث باباجانی"
      },
      {
        "state": "کرمانشاه",
        "city": "ازگله",
        "latitude": "34.8322142",
        "longitude": "45.8424966",
        "province": "ثلاث باباجانی"
      },
      {
        "state": "کرمانشاه",
        "city": "سطر",
        "latitude": "34.8126546",
        "longitude": "47.4612562",
        "province": "سنقر"
      },
      {
        "state": "کرمانشاه",
        "city": "میان‌راهان",
        "latitude": "34.5843",
        "longitude": "47.442",
        "province": "صحنه"
      },
      {
        "state": "کرمانشاه",
        "city": "هلشی",
        "latitude": "34.1108",
        "longitude": "47.0896",
        "province": "کرمانشاه"
      },
      {
        "state": "کرمانشاه",
        "city": "گیلانغرب",
        "latitude": "34.1411088",
        "longitude": "45.9140759",
        "province": "گیلانغرب"
      },
      {
        "state": "کرمانشاه",
        "city": "شیخ سله",
        "province": "شیخ سله",
        "latitude": "34.9707879",
        "longitude": "45.9260275"
      },
      {
        "state": "کرمانشاه",
        "city": "مرز شیخ صالح",
        "province": "مرز شیخ صالح",
        "latitude": "34.970647",
        "longitude": "45.930051"
      },
      {
        "state": "کرمانشاه",
        "city": "شوشمی",
        "province": "شوشمی",
        "latitude": "35.1739",
        "longitude": "46.1806"
      },
      {
        "state": "کهگیلویه و بویراحمد",
        "city": "یاسوج",
        "latitude": "30.6676663",
        "longitude": "51.5802638",
        "province": "بویراحمد"
      },
      {
        "state": "کهگیلویه و بویراحمد",
        "city": "کفشکنان",
        "latitude": "50.093332",
        "longitude": "30.893955",
        "province": "بهمئی"
      },
      {
        "state": "کهگیلویه و بویراحمد",
        "city": "لیکک",
        "latitude": "30.8924843",
        "longitude": "50.0917097",
        "province": "بهمئی"
      },
      {
        "state": "کهگیلویه و بویراحمد",
        "city": "گراب سفلی",
        "latitude": "30.9426038",
        "longitude": "50.8983137",
        "province": "بویراحمد"
      },
      {
        "state": "کهگیلویه و بویراحمد",
        "city": "چرام",
        "province": "چرام",
        "latitude": "30.750813",
        "longitude": "50.7419101"
      },
      {
        "state": "کهگیلویه و بویراحمد",
        "city": "سی سخت",
        "latitude": "30.8630661",
        "longitude": "51.4557071",
        "province": "دنا"
      },
      {
        "state": "کهگیلویه و بویراحمد",
        "city": "پاتاوه",
        "latitude": "30.9584492",
        "longitude": "51.2641496",
        "province": "دنا"
      },
      {
        "state": "کهگیلویه و بویراحمد",
        "city": "چیتاب",
        "latitude": "30.7942097",
        "longitude": "51.327525",
        "province": "دنا"
      },
      {
        "state": "کهگیلویه و بویراحمد",
        "city": "دیشموک",
        "province": "کهگیلویه",
        "latitude": "31.2969774",
        "longitude": "50.4022724"
      },
      {
        "state": "کهگیلویه و بویراحمد",
        "city": "سوق",
        "province": "کهگیلویه",
        "latitude": "30.8608561",
        "longitude": "50.4565101"
      },
      {
        "state": "کهگیلویه و بویراحمد",
        "city": "لنده",
        "latitude": "30.9795975",
        "longitude": "50.4238799",
        "province": "کهگیلویه"
      },
      {
        "state": "کهگیلویه و بویراحمد",
        "city": "دوگنبدان",
        "province": "گچساران",
        "latitude": "30.3570209",
        "longitude": "50.7940113"
      },
      {
        "state": "کهگیلویه و بویراحمد",
        "city": "گچساران",
        "province": "گچساران",
        "latitude": "30.3570209",
        "longitude": "50.7940113"
      },
      {
        "state": "کهگیلویه و بویراحمد",
        "city": "محله چینی‌ها",
        "province": "گچساران",
        "latitude": "30.3540532",
        "longitude": "50.8279045"
      },
      {
        "state": "کهگیلویه و بویراحمد",
        "city": "باشت",
        "latitude": "30.3610498",
        "longitude": "51.1575225",
        "province": "باشت"
      },
      {
        "state": "کهگیلویه و بویراحمد",
        "city": "دهدشت",
        "province": "&nbsp;",
        "latitude": "30.7925297",
        "longitude": "50.5629444"
      },
      {
        "state": "گلستان",
        "city": "گرگان",
        "latitude": "37.2063524",
        "longitude": "54.736433",
        "province": "گرگان"
      },
      {
        "state": "گلستان",
        "city": "گلستان",
        "latitude": "35.5181918",
        "longitude": "51.181869",
        "province": "گرگان"
      },
      {
        "state": "گلستان",
        "city": "کردکوی",
        "province": "کردکوی",
        "latitude": "36.7627485",
        "longitude": "54.124492"
      },
      {
        "state": "گلستان",
        "city": "بندر ترکمن",
        "province": "بندر ترکمن",
        "latitude": "36.8929175",
        "longitude": "54.0697204"
      },
      {
        "state": "گلستان",
        "city": "آق قلا",
        "latitude": "37.0134841",
        "longitude": "54.4576664",
        "province": "آق قلا"
      },
      {
        "state": "گلستان",
        "city": "گمیشان",
        "province": "گمیشان",
        "latitude": "37.070099",
        "longitude": "54.0770422"
      },
      {
        "state": "گلستان",
        "city": "آزادشهر",
        "latitude": "37.0875125",
        "longitude": "55.1725639",
        "province": "آزادشهر"
      },
      {
        "state": "گلستان",
        "city": "مینودشت",
        "latitude": "37.2288889",
        "longitude": "55.3747222",
        "province": "مینودشت"
      },
      {
        "state": "گلستان",
        "city": "گالیکش",
        "province": "گالیکش",
        "latitude": "37.2719444",
        "longitude": "55.4325"
      },
      {
        "state": "گلستان",
        "city": "کلاله",
        "latitude": "37.380833",
        "longitude": "55.491667",
        "province": "کلاله"
      },
      {
        "state": "گلستان",
        "city": "نگین‌شهر",
        "province": "آزادشهر",
        "latitude": "37.1391667",
        "longitude": "55.1638889"
      },
      {
        "state": "گلستان",
        "city": "انبار آلوم",
        "province": "آق‌قلا",
        "latitude": "37.132984",
        "longitude": "54.629817"
      },
      {
        "state": "گلستان",
        "city": "بندر گز",
        "latitude": "36.774728",
        "longitude": "53.946598",
        "province": "بندر گز"
      },
      {
        "state": "گلستان",
        "city": "نوکنده",
        "latitude": "36.7400119",
        "longitude": "53.9094891",
        "province": "بندر گز"
      },
      {
        "state": "گلستان",
        "city": "سیمین‌شهر",
        "province": "ترکمن",
        "latitude": "37.011276",
        "longitude": "54.231706"
      },
      {
        "state": "گلستان",
        "city": "خان‌ببین",
        "latitude": "37.0125489",
        "longitude": "54.985773",
        "province": "رامیان"
      },
      {
        "state": "گلستان",
        "city": "دلند",
        "latitude": "37.0355462",
        "longitude": "55.0492231",
        "province": "رامیان"
      },
      {
        "state": "گلستان",
        "city": "علی‌آباد کتول",
        "province": "علی‌آباد",
        "latitude": "36.9083415",
        "longitude": "54.8675871"
      },
      {
        "state": "گلستان",
        "city": "فاضل آباد",
        "province": "علی‌آباد",
        "latitude": "36.900353",
        "longitude": "54.7501997"
      },
      {
        "state": "گلستان",
        "city": "سرخنکلاته",
        "latitude": "36.8924801",
        "longitude": "54.5690723",
        "province": "گرگان"
      },
      {
        "state": "گلستان",
        "city": "اینچه‌بُرون",
        "latitude": "37.455004",
        "longitude": "54.721229",
        "province": "گنبد کاووس"
      },
      {
        "state": "گلستان",
        "city": "گنبدکاووس",
        "latitude": "37.25",
        "longitude": "55.167222",
        "province": "گنبد کاووس"
      },
      {
        "state": "گیلان",
        "city": "رشت",
        "latitude": "37.2793607",
        "longitude": "49.5846102",
        "province": "رشت"
      },
      {
        "state": "گیلان",
        "city": "منجیل",
        "latitude": "36.7448499",
        "longitude": "49.4000305",
        "province": "رودبار"
      },
      {
        "state": "گیلان",
        "city": "رودبار",
        "latitude": "36.8219055",
        "longitude": "49.4268249",
        "province": "رودبار"
      },
      {
        "state": "گیلان",
        "city": "لوشان",
        "latitude": "36.6279334",
        "longitude": "49.5162305",
        "province": "رودبار"
      },
      {
        "state": "گیلان",
        "city": "رودبار زیتون",
        "province": "رودبار زیتون",
        "latitude": "36.813603",
        "longitude": "49.459162"
      },
      {
        "state": "گیلان",
        "city": "چابکسر",
        "latitude": "36.9743391",
        "longitude": "50.57079",
        "province": "رودسر"
      },
      {
        "state": "گیلان",
        "city": "رودسر",
        "latitude": "37.1381592",
        "longitude": "50.2927862",
        "province": "رودسر"
      },
      {
        "state": "گیلان",
        "city": "شفت",
        "latitude": "37.1703562",
        "longitude": "49.4027782",
        "province": "شفت"
      },
      {
        "state": "گیلان",
        "city": "لنگرود",
        "latitude": "37.196944",
        "longitude": "50.153611",
        "province": "لنگرود"
      },
      {
        "state": "گیلان",
        "city": "پونل",
        "province": "پونل",
        "latitude": "37.5277118",
        "longitude": "49.1124606"
      },
      {
        "state": "گیلان",
        "city": "لاهیجان",
        "latitude": "37.2533595",
        "longitude": "49.7837299",
        "province": "لاهیجان"
      },
      {
        "state": "گیلان",
        "city": "فومن",
        "latitude": "37.2273234",
        "longitude": "49.3141954",
        "province": "فومن"
      },
      {
        "state": "گیلان",
        "city": "آستانه اشرفیه",
        "latitude": "37.2607374",
        "longitude": "49.9456642",
        "province": "آستانه اشرفیه"
      },
      {
        "state": "گیلان",
        "city": "رودبنه",
        "province": "لاهیجان",
        "latitude": "37.2548508",
        "longitude": "50.0039032"
      },
      {
        "state": "گیلان",
        "city": "کوچصفهان",
        "latitude": "37.2787049",
        "longitude": "49.7721208",
        "province": "رشت"
      },
      {
        "state": "گیلان",
        "city": "صومعه سرا",
        "latitude": "37.301672",
        "longitude": "49.3147378",
        "province": "صومعه سرا"
      },
      {
        "state": "گیلان",
        "city": "رضوان‌شهر",
        "latitude": "37.564842",
        "longitude": "49.148391",
        "province": "رضوان‌شهر"
      },
      {
        "state": "گیلان",
        "city": "هشتپر",
        "province": "تالش",
        "latitude": "37.7974981",
        "longitude": "48.904184"
      },
      {
        "state": "گیلان",
        "city": "تالش",
        "province": "&nbsp;",
        "latitude": "37.7974981",
        "longitude": "48.904184"
      },
      {
        "state": "گیلان",
        "city": "چوبر",
        "province": "تالش",
        "latitude": "37.0926728",
        "longitude": "49.4140997"
      },
      {
        "state": "گیلان",
        "city": "اسالم",
        "province": "تالش",
        "latitude": "37.731171",
        "longitude": "48.9545271"
      },
      {
        "state": "گیلان",
        "city": "لیسار",
        "province": "تالش",
        "latitude": "37.959133",
        "longitude": "48.9086032"
      },
      {
        "state": "گیلان",
        "city": "لوندویل",
        "latitude": "38.3082625",
        "longitude": "48.8675037",
        "province": "آستارا"
      },
      {
        "state": "گیلان",
        "city": "املش",
        "latitude": "37.0961905",
        "longitude": "50.1844452",
        "province": "املش"
      },
      {
        "state": "گیلان",
        "city": "بندر آستارا",
        "latitude": "38.429167",
        "longitude": "48.871944",
        "province": "آستارا"
      },
      {
        "state": "گیلان",
        "city": "بندر انزلی",
        "latitude": "37.4716356",
        "longitude": "49.4685904",
        "province": "بندر انزلی"
      },
      {
        "state": "گیلان",
        "city": "لشت نشا",
        "latitude": "37.359334",
        "longitude": "49.861311",
        "province": "رشت"
      },
      {
        "state": "گیلان",
        "city": "توتکابن",
        "province": "رودبار",
        "latitude": "36.8928479",
        "longitude": "49.5276938"
      },
      {
        "state": "گیلان",
        "city": "مارلیک",
        "province": "رودبار",
        "latitude": "36.830533",
        "longitude": "49.459033"
      },
      {
        "state": "گیلان",
        "city": "جیرنده",
        "province": "رودبار",
        "latitude": "36.7021301",
        "longitude": "49.7957151"
      },
      {
        "state": "گیلان",
        "city": "خلیفه محله",
        "latitude": "37.1366576",
        "longitude": "50.1987661",
        "province": "رودسر"
      },
      {
        "state": "گیلان",
        "city": "واجارگاه",
        "latitude": "37.03829",
        "longitude": "50.4058965",
        "province": "رودسر"
      },
      {
        "state": "گیلان",
        "city": "احمدسرگوراب",
        "latitude": "37.146941",
        "longitude": "49.349906",
        "province": "شفت"
      },
      {
        "state": "گیلان",
        "city": "مرجغل",
        "latitude": "37.2761076",
        "longitude": "49.37639",
        "province": "صومعه‌سرا"
      },
      {
        "state": "گیلان",
        "city": "اطاقور",
        "latitude": "37.108774",
        "longitude": "50.114512",
        "province": "لنگرود"
      },
      {
        "state": "گیلان",
        "city": "شلمان",
        "latitude": "37.1559178",
        "longitude": "50.2161864",
        "province": "لنگرود"
      },
      {
        "state": "گیلان",
        "city": "بازارجمعه",
        "latitude": "37.277920",
        "longitude": "49.383459",
        "province": "ماسال"
      },
      {
        "state": "گیلان",
        "city": "ماسال",
        "latitude": "37.3640801",
        "longitude": "49.1328792",
        "province": "ماسال"
      },
      {
        "state": "گیلان",
        "city": "سیاهکل",
        "province": "سیاهکل",
        "latitude": "37.1521893",
        "longitude": "49.8716407"
      },
      {
        "state": "لرستان",
        "city": "خرم‌آباد",
        "latitude": "33.4842109",
        "longitude": "48.3538276",
        "province": "خرم‌آباد"
      },
      {
        "state": "لرستان",
        "city": "الیگودرز",
        "latitude": "33.4035124",
        "longitude": "49.6921874",
        "province": "الیگودرز"
      },
      {
        "state": "لرستان",
        "city": "ازنا",
        "latitude": "33.4568272",
        "longitude": "49.4537204",
        "province": "ازنا"
      },
      {
        "state": "لرستان",
        "city": "دورود",
        "latitude": "33.4992998",
        "longitude": "49.0529575",
        "province": "دورود"
      },
      {
        "state": "لرستان",
        "city": "کوهدشت",
        "latitude": "33.5331808",
        "longitude": "47.6070512",
        "province": "کوهدشت"
      },
      {
        "state": "لرستان",
        "city": "نورآباد",
        "province": "دلفان",
        "latitude": "34.0726246",
        "longitude": "47.9728357"
      },
      {
        "state": "لرستان",
        "city": "الشتر",
        "province": "الشتر",
        "latitude": "33.8627885",
        "longitude": "48.2619601"
      },
      {
        "state": "لرستان",
        "city": "بروجرد",
        "latitude": "33.7324996",
        "longitude": "48.8841277",
        "province": "بروجرد"
      },
      {
        "state": "لرستان",
        "city": "فرزیان",
        "latitude": "33.559151",
        "longitude": "49.5555178",
        "province": "ازنا"
      },
      {
        "state": "لرستان",
        "city": "معمولان",
        "latitude": "33.3793239",
        "longitude": "47.9603107",
        "province": "پلدختر"
      },
      {
        "state": "لرستان",
        "city": "پل‌دختر",
        "latitude": "33.1524187",
        "longitude": "47.7117493",
        "province": "پل‌دختر"
      },
      {
        "state": "لرستان",
        "city": "زاغه",
        "latitude": "33.4999202",
        "longitude": "48.7059909",
        "province": "خرم‌آباد"
      },
      {
        "state": "لرستان",
        "city": "ویسیان",
        "latitude": "33.4866325",
        "longitude": "48.0304375",
        "province": "خرم‌آباد"
      },
      {
        "state": "لرستان",
        "city": "سراب‌دوره",
        "latitude": "33.5636959",
        "longitude": "48.0225482",
        "province": "دوره"
      },
      {
        "state": "لرستان",
        "city": "چالانچولان",
        "latitude": "33.665210",
        "longitude": "48.908043",
        "province": "دورود"
      },
      {
        "state": "لرستان",
        "city": "فیروزآباد",
        "latitude": "33.8982515",
        "longitude": "48.1034902",
        "province": "سلسله"
      },
      {
        "state": "لرستان",
        "city": "درب گنبد",
        "province": "کوهدشت",
        "latitude": "33.6904944",
        "longitude": "47.1502234"
      },
      {
        "state": "لرستان",
        "city": "کونانی",
        "province": "کوهدشت",
        "latitude": "33.403194",
        "longitude": "47.3258403"
      },
      {
        "state": "لرستان",
        "city": "گراب",
        "province": "کوهدشت",
        "latitude": "33.4853061",
        "longitude": "48.489661"
      },
      {
        "state": "لرستان",
        "city": "بیرانشهر",
        "province": "بیرانشهر",
        "latitude": "33.6485949",
        "longitude": "48.5597292"
      },
      {
        "state": "لرستان",
        "city": "رومشگان",
        "province": "رومشگان",
        "latitude": "33.268762",
        "longitude": "47.568526"
      },
      {
        "state": "مازندران",
        "city": "ساری",
        "latitude": "36.563333",
        "longitude": "53.060000",
        "province": "ساری"
      },
      {
        "state": "مازندران",
        "city": "گزنک",
        "province": "آمل",
        "latitude": "35.9038115",
        "longitude": "52.2246758"
      },
      {
        "state": "مازندران",
        "city": "آلاشت",
        "latitude": "36.066319",
        "longitude": "52.8366338",
        "province": "سوادکوه"
      },
      {
        "state": "مازندران",
        "city": "پل سفید",
        "latitude": "36.1169618",
        "longitude": "53.0574831",
        "province": "سوادکوه"
      },
      {
        "state": "مازندران",
        "city": "نور",
        "latitude": "36.5732661",
        "longitude": "52.0101",
        "province": "نور"
      },
      {
        "state": "مازندران",
        "city": "بلده",
        "latitude": "36.202753",
        "longitude": "51.8089289",
        "province": "نور"
      },
      {
        "state": "مازندران",
        "city": "چمستان",
        "latitude": "36.4773762",
        "longitude": "52.1167325",
        "province": "نور"
      },
      {
        "state": "مازندران",
        "city": "رویان",
        "latitude": "36.5694026",
        "longitude": "51.9617002",
        "province": "نور"
      },
      {
        "state": "مازندران",
        "city": "ایزدشهر",
        "latitude": "36.5987867",
        "longitude": "52.135172",
        "province": "نور"
      },
      {
        "state": "مازندران",
        "city": "کیاسر",
        "province": "ساری",
        "latitude": "36.2366087",
        "longitude": "53.5412514"
      },
      {
        "state": "مازندران",
        "city": "شیرگاه",
        "latitude": "36.3004288",
        "longitude": "52.8815857",
        "province": "سوادکوه"
      },
      {
        "state": "مازندران",
        "city": "آمل",
        "latitude": "36.4718947",
        "longitude": "52.3499009",
        "province": "آمل"
      },
      {
        "state": "مازندران",
        "city": "قائم‌شهر",
        "latitude": "36.4636399",
        "longitude": "52.8579311",
        "province": "قائم‌شهر"
      },
      {
        "state": "مازندران",
        "city": "کلاردشت",
        "province": "چالوس",
        "latitude": "36.5055519",
        "longitude": "51.1587669"
      },
      {
        "state": "مازندران",
        "city": "بابل",
        "province": "بابل",
        "latitude": "36.5452581",
        "longitude": "52.6846571"
      },
      {
        "state": "مازندران",
        "city": "جویبار",
        "latitude": "36.6400238",
        "longitude": "52.9100038",
        "province": "جویبار"
      },
      {
        "state": "مازندران",
        "city": "نوشهر",
        "latitude": "36.6508069",
        "longitude": "51.5034126",
        "province": "نوشهر"
      },
      {
        "state": "مازندران",
        "city": "چالوس",
        "latitude": "36.6506329",
        "longitude": "51.4223717",
        "province": "چالوس"
      },
      {
        "state": "مازندران",
        "city": "فریدون‌کنار",
        "latitude": "36.6830883",
        "longitude": "52.5217808",
        "province": "فریدون‌کنار"
      },
      {
        "state": "مازندران",
        "city": "بابلسر",
        "province": "بابلسر",
        "latitude": "36.7008777",
        "longitude": "52.6481047"
      },
      {
        "state": "مازندران",
        "city": "بهشهر",
        "province": "بهشهر",
        "latitude": "36.6911785",
        "longitude": "53.543415"
      },
      {
        "state": "مازندران",
        "city": "رستمکلا",
        "province": "بهشهر",
        "latitude": "36.5532407",
        "longitude": "52.894535"
      },
      {
        "state": "مازندران",
        "city": "خلیل‌شهر",
        "province": "بهشهر",
        "latitude": "36.7013487",
        "longitude": "53.6402049"
      },
      {
        "state": "مازندران",
        "city": "گرجی‌محله",
        "province": "بهشهر",
        "latitude": "36.684587",
        "longitude": "53.546709"
      },
      {
        "state": "مازندران",
        "city": "بندر امیر آباد",
        "province": "بهشهر",
        "latitude": "36.853304",
        "longitude": "53.355548"
      },
      {
        "state": "مازندران",
        "city": "زاغمرز",
        "province": "بهشهر",
        "latitude": "36.805126",
        "longitude": "53.303110"
      },
      {
        "state": "مازندران",
        "city": "گلوگاه",
        "latitude": "36.727222",
        "longitude": "53.808889",
        "province": "گلوگاه"
      },
      {
        "state": "مازندران",
        "city": "تنکابن",
        "latitude": "36.816389",
        "longitude": "50.873889",
        "province": "تنکابن"
      },
      {
        "state": "مازندران",
        "city": "نکا",
        "province": "نکا",
        "latitude": "36.647082",
        "longitude": "53.297150"
      },
      {
        "state": "مازندران",
        "city": "رامسر",
        "latitude": "36.903056",
        "longitude": "50.658333",
        "province": "رامسر"
      },
      {
        "state": "مازندران",
        "city": "دابودشت",
        "province": "آمل",
        "latitude": "36.476629",
        "longitude": "52.447385"
      },
      {
        "state": "مازندران",
        "city": "امیرشهر",
        "province": "بابل",
        "latitude": "36.5969933",
        "longitude": "52.6652777"
      },
      {
        "state": "مازندران",
        "city": "خوش‌رودپی",
        "province": "بابل",
        "latitude": "36.373577",
        "longitude": "52.566855"
      },
      {
        "state": "مازندران",
        "city": "زرگرمحله",
        "province": "بابل",
        "latitude": "36.546907",
        "longitude": "52.680571"
      },
      {
        "state": "مازندران",
        "city": "مرزیکلا",
        "province": "بابل",
        "latitude": "36.3636458",
        "longitude": "52.7341391"
      },
      {
        "state": "مازندران",
        "city": "گتاب",
        "province": "بابل",
        "latitude": "36.431717",
        "longitude": "52.6578558"
      },
      {
        "state": "مازندران",
        "city": "امیرکلا",
        "province": "بابل",
        "latitude": "36.5969933",
        "longitude": "52.6652777"
      },
      {
        "state": "مازندران",
        "city": "کله‌بست",
        "province": "بابلسر",
        "latitude": "36.6400809",
        "longitude": "52.6315535"
      },
      {
        "state": "مازندران",
        "city": "نشتارود",
        "latitude": "36.7486267",
        "longitude": "51.0358454",
        "province": "تنکابن"
      },
      {
        "state": "مازندران",
        "city": "کلارآباد",
        "latitude": "36.6964662",
        "longitude": "51.2511485",
        "province": "تنکابن"
      },
      {
        "state": "مازندران",
        "city": "کوهی‌خیل",
        "latitude": "36.6879187",
        "longitude": "52.9118026",
        "province": "جویبار"
      },
      {
        "state": "مازندران",
        "city": "مرزن‌آباد",
        "latitude": "36.4539793",
        "longitude": "51.3005787",
        "province": "چالوس"
      },
      {
        "state": "مازندران",
        "city": "فریم",
        "province": "ساری",
        "latitude": "36.1726982",
        "longitude": "53.2677764"
      },
      {
        "state": "مازندران",
        "city": "سوادکوه",
        "latitude": "36.3040255",
        "longitude": "52.8852403",
        "province": "سوادکوه"
      },
      {
        "state": "مازندران",
        "city": "محمودآباد",
        "latitude": "36.6308963",
        "longitude": "52.2621156",
        "province": "محمودآباد"
      },

      {
        "state": "مازندران",
        "city": "عباس آباد",
        "latitude": "36.722931",
        "longitude": "51.107169",
        "province": "عباس آباد"
      },
      {
        "state": "مازندران",
        "city": "سلمانشهر",
        "latitude": "36.694700",
        "longitude": "51.195500",
        "province": "عباس آباد"
      },
      {
        "state": "مرکزی",
        "city": "اراک",
        "latitude": "34.80370505",
        "longitude": "48.532763856651",
        "province": "اراک"
      },
      {
        "state": "مرکزی",
        "city": "خمین",
        "latitude": "33.6446965",
        "longitude": "50.0801376",
        "province": "خمین"
      },
      {
        "state": "مرکزی",
        "city": "شازند",
        "latitude": "33.9293155",
        "longitude": "49.4070049",
        "province": "شازند"
      },
      {
        "state": "مرکزی",
        "city": "محلات",
        "latitude": "33.9060573",
        "longitude": "50.4526427",
        "province": "محلات"
      },
      {
        "state": "مرکزی",
        "city": "نراق",
        "latitude": "34.0096318",
        "longitude": "50.8402395",
        "province": "دلیجان"
      },
      {
        "state": "مرکزی",
        "city": "دلیجان",
        "latitude": "33.9880486",
        "longitude": "50.6862901",
        "province": "دلیجان"
      },
      {
        "state": "مرکزی",
        "city": "خنداب",
        "latitude": "34.7629999",
        "longitude": "48.206155",
        "province": "خنداب"
      },
      {
        "state": "مرکزی",
        "city": "فرمهین",
        "latitude": "34.508096",
        "longitude": "49.688280",
        "province": "فراهان"
      },
      {
        "state": "مرکزی",
        "city": "تفرش",
        "latitude": "34.6927402",
        "longitude": "50.0146963",
        "province": "تفرش"
      },
      {
        "state": "مرکزی",
        "city": "ساوه",
        "latitude": "35.0206133",
        "longitude": "50.3584834",
        "province": "ساوه"
      },
      {
        "state": "مرکزی",
        "city": "انجدان",
        "latitude": "33.9790129",
        "longitude": "50.0332139",
        "province": "اراک"
      },
      {
        "state": "مرکزی",
        "city": "سنجان",
        "latitude": "34.0503511",
        "longitude": "49.6217982518177",
        "province": "اراک"
      },
      {
        "state": "مرکزی",
        "city": "ضامنجان",
        "latitude": "34.0263452",
        "longitude": "49.6154586",
        "province": "اراک"
      },
      {
        "state": "مرکزی",
        "city": "فیجان",
        "latitude": "34.050843",
        "longitude": "49.620731",
        "province": "اراک"
      },
      {
        "state": "مرکزی",
        "city": "کرهرود",
        "latitude": "34.06094815",
        "longitude": "49.6452871847769",
        "province": "اراک"
      },
      {
        "state": "مرکزی",
        "city": "بازنه",
        "province": "شازند",
        "latitude": "33.8800652",
        "longitude": "49.5326243"
      },
      {
        "state": "مرکزی",
        "city": "آشتیان",
        "latitude": "34.5216784",
        "longitude": "50.0018687",
        "province": "آشتیان"
      },
      {
        "state": "مرکزی",
        "city": "قورچی‌باشی",
        "latitude": "33.67494",
        "longitude": "49.8760505",
        "province": "خمین"
      },
      {
        "state": "مرکزی",
        "city": "زرندیه",
        "latitude": "35.3011297",
        "longitude": "50.5073612",
        "province": "زرندیه"
      },
      {
        "state": "مرکزی",
        "city": "رازقان",
        "latitude": "35.3312924",
        "longitude": "49.9556045",
        "province": "زرندیه"
      },
      {
        "state": "مرکزی",
        "city": "زاویه",
        "latitude": "35.3830162",
        "longitude": "50.5644495",
        "province": "زرندیه"
      },
      {
        "state": "مرکزی",
        "city": "مأمونیه",
        "latitude": "35.3011297",
        "longitude": "50.5073612",
        "province": "زرندیه"
      },
      {
        "state": "مرکزی",
        "city": "پرندک",
        "latitude": "35.3624016",
        "longitude": "50.6793095",
        "province": "زرندیه"
      },
      {
        "state": "مرکزی",
        "city": "غرق‌آباد",
        "province": "ساوه",
        "latitude": "35.1092029",
        "longitude": "49.8312434"
      },
      {
        "state": "مرکزی",
        "city": "نوبران",
        "province": "ساوه",
        "latitude": "35.1306563",
        "longitude": "49.7089976"
      },
      {
        "state": "مرکزی",
        "city": "توره",
        "province": "شازند",
        "latitude": "34.0444771",
        "longitude": "49.2886966"
      },
      {
        "state": "مرکزی",
        "city": "کمیجان",
        "province": "کمیجان",
        "latitude": "34.7207822",
        "longitude": "49.3219622"
      },
      {
        "state": "مرکزی",
        "city": "نیم‌ور",
        "province": "محلات",
        "latitude": "33.88404",
        "longitude": "50.5721677"
      },
      {
        "state": "مرکزی",
        "city": "داودآباد",
        "province": "داودآباد",
        "latitude": "34.297248",
        "longitude": "49.849953"
      },
      {
        "state": "هرمزگان",
        "city": "بندر عباس",
        "latitude": "27.1793466",
        "longitude": "56.2781423",
        "province": "بندر عباس"
      },
      {
        "state": "هرمزگان",
        "city": "جاسک",
        "latitude": "25.6436156",
        "longitude": "57.7745644",
        "province": "جاسک"
      },
      {
        "state": "هرمزگان",
        "city": "ابوموسی",
        "latitude": "25.8835628",
        "longitude": "55.0374364",
        "province": "ابوموسی"
      },
      {
        "state": "هرمزگان",
        "city": "بندر لنگه",
        "province": "بندر لنگه",
        "latitude": "26.5620668",
        "longitude": "54.883817"
      },
      {
        "state": "هرمزگان",
        "city": "بندر چارک",
        "province": "بندر لنگه",
        "latitude": "26.7318351",
        "longitude": "54.2791108"
      },
      {
        "state": "هرمزگان",
        "city": "بندر خمیر",
        "latitude": "26.9516377",
        "longitude": "55.5877083",
        "province": "خمیر"
      },
      {
        "state": "هرمزگان",
        "city": "قشم",
        "latitude": "26.8594605",
        "longitude": "56.0064541",
        "province": "قشم"
      },
      {
        "state": "هرمزگان",
        "city": "درگهان",
        "latitude": "26.9674546",
        "longitude": "56.0778103",
        "province": "قشم"
      },
      {
        "state": "هرمزگان",
        "city": "جناح",
        "latitude": "27.0173998",
        "longitude": "54.2839961",
        "province": "بستک"
      },
      {
        "state": "هرمزگان",
        "city": "مهران",
        "province": "بستک",
        "latitude": "26.829293",
        "longitude": "53.828680"
      },
      {
        "state": "هرمزگان",
        "city": "میناب",
        "latitude": "27.1483069",
        "longitude": "57.0736732",
        "province": "میناب"
      },
      {
        "state": "هرمزگان",
        "city": "سیریک",
        "latitude": "26.5180461",
        "longitude": "57.1018838",
        "province": "میناب"
      },
      {
        "state": "هرمزگان",
        "city": "سندرک",
        "latitude": "26.8370511",
        "longitude": "57.4254084",
        "province": "میناب"
      },
      {
        "state": "هرمزگان",
        "city": "بستک",
        "latitude": "27.1977195",
        "longitude": "54.362564",
        "province": "بستک"
      },
      {
        "state": "هرمزگان",
        "city": "پارسیان",
        "latitude": "27.2082174",
        "longitude": "53.0351431",
        "province": "پارسیان"
      },
      {
        "state": "هرمزگان",
        "city": "رودان",
        "province": "رودان",
        "latitude": "27.4413347",
        "longitude": "57.1909085"
      },
      {
        "state": "هرمزگان",
        "city": "فین",
        "latitude": "27.6310402",
        "longitude": "55.8952572",
        "province": "بندر عباس"
      },
      {
        "state": "هرمزگان",
        "city": "حاجی‌آباد",
        "latitude": "28.3071782",
        "longitude": "55.8984682",
        "province": "حاجی‌آباد"
      },
      {
        "state": "هرمزگان",
        "city": "سرچاهان",
        "latitude": "28.0626871",
        "longitude": "55.8770736",
        "province": "حاجی‌آباد"
      },
      {
        "state": "هرمزگان",
        "city": "جزیره کیش",
        "latitude": "26.530421",
        "longitude": "53.986847",
        "province": "بندر لنگه"
      },
      {
        "state": "هرمزگان",
        "city": "شهر کنگ",
        "latitude": "26.594779",
        "longitude": "54.937303",
        "province": "بندر لنگه"
      },
      {
        "state": "هرمزگان",
        "city": "شهر کیش",
        "latitude": "26.532051",
        "longitude": "53.985716",
        "province": "بندر لنگه"
      },
      {
        "state": "هرمزگان",
        "city": "شهر رویدر",
        "latitude": "27.469834",
        "longitude": "55.419543",
        "province": "خمیر"
      },
      {
        "state": "هرمزگان",
        "city": "لیردف",
        "province": "لیردف",
        "latitude": "25.639746",
        "longitude": "58.868780"
      },
      {
        "state": "همدان",
        "city": "همدان",
        "latitude": "34.7990866",
        "longitude": "48.5148169",
        "province": "همدان"
      },
      {
        "state": "همدان",
        "city": "قهاوند",
        "latitude": "34.8594697",
        "longitude": "49.0033362",
        "province": "همدان"
      },
      {
        "state": "همدان",
        "city": "فامنین",
        "latitude": "35.1179137",
        "longitude": "48.9721158",
        "province": "همدان"
      },
      {
        "state": "همدان",
        "city": "گیان",
        "latitude": "34.1771986",
        "longitude": "48.2445727",
        "province": "نهاوند"
      },
      {
        "state": "همدان",
        "city": "نهاوند",
        "latitude": "34.1896877",
        "longitude": "48.3716218",
        "province": "نهاوند"
      },
      {
        "state": "همدان",
        "city": "ملایر",
        "latitude": "34.301850",
        "longitude": "48.814316",
        "province": "ملایر"
      },
      {
        "state": "همدان",
        "city": "فیروزان",
        "latitude": "34.360476",
        "longitude": "48.1138221",
        "province": "نهاوند"
      },
      {
        "state": "همدان",
        "city": "بهار",
        "latitude": "34.9059088",
        "longitude": "48.440865",
        "province": "بهار"
      },
      {
        "state": "همدان",
        "city": "رزن",
        "latitude": "35.3884459",
        "longitude": "49.0344948",
        "province": "رزن"
      },
      {
        "state": "همدان",
        "city": "صالح‌آباد",
        "latitude": "34.9215829",
        "longitude": "48.3431377",
        "province": "بهار"
      },
      {
        "state": "همدان",
        "city": "لالجین",
        "latitude": "34.9746055",
        "longitude": "48.4750848",
        "province": "بهار"
      },
      {
        "state": "همدان",
        "city": "مهاجران",
        "latitude": "35.0764851",
        "longitude": "48.6161213",
        "province": "بهار"
      },
      {
        "state": "همدان",
        "city": "فرسفج",
        "latitude": "34.4865511",
        "longitude": "48.2859752",
        "province": "تویسرکان"
      },
      {
        "state": "همدان",
        "city": "تویسرکان",
        "latitude": "34.5478858",
        "longitude": "48.4478184",
        "province": "تویسرکان"
      },
      {
        "state": "همدان",
        "city": "کبود رآهنگ",
        "latitude": "35.208333",
        "longitude": "48.723889",
        "province": "کبودرآهنگ"
      },
      {
        "state": "همدان",
        "city": "حسین آباد ناظم",
        "province": "ملایر",
        "latitude": "34.2960289",
        "longitude": "48.6038257"
      },
      {
        "state": "همدان",
        "city": "زنگنه",
        "province": "ملایر",
        "latitude": "34.1552764",
        "longitude": "49.01032"
      },
      {
        "state": "همدان",
        "city": "سامن",
        "province": "ملایر",
        "latitude": "34.2090147",
        "longitude": "48.704561"
      },
      {
        "state": "همدان",
        "city": "برزول",
        "province": "نهاوند",
        "latitude": "34.2128467",
        "longitude": "48.2600728"
      },
      {
        "state": "همدان",
        "city": "اسدآباد",
        "latitude": "34.7825885",
        "longitude": "48.1217832",
        "province": "اسدآباد"
      },
      {
        "state": "یزد",
        "city": "یزد",
        "province": "یزد",
        "latitude": "31.8886686",
        "longitude": "54.3641264"
      },
      {
        "state": "یزد",
        "city": "بافق",
        "latitude": "31.5997065",
        "longitude": "55.3966892",
        "province": "بافق"
      },
      {
        "state": "یزد",
        "city": "فردوس",
        "province": "فردوس",
        "latitude": "31.7432934",
        "longitude": "55.9815756"
      },
      {
        "state": "یزد",
        "city": "ندوشن",
        "province": "صدوق",
        "latitude": "32.0281951",
        "longitude": "53.5494049"
      },
      {
        "state": "یزد",
        "city": "میبد",
        "latitude": "32.2510825",
        "longitude": "54.0159205",
        "province": "میبد"
      },
      {
        "state": "یزد",
        "city": "اردکان(یزد)",
        "latitude": "32.308241",
        "longitude": "54.009004",
        "province": "اردکان"
      },
      {
        "state": "خراسان جنوبی",
        "city": "دیهوک",
        "province": "طبس",
        "latitude": "33.291961",
        "longitude": "57.512094"
      },
      {
        "state": "یزد",
        "city": "مهردشت",
        "province": "ابرکوه",
        "latitude": "31.0223563",
        "longitude": "53.3552819"
      },
      {
        "state": "یزد",
        "city": "ابرکوه",
        "latitude": "31.1324814",
        "longitude": "53.2803103",
        "province": "ابرکوه"
      },
      {
        "state": "یزد",
        "city": "بهاباد",
        "latitude": "31.876794",
        "longitude": "56.0191037",
        "province": "بهاباد"
      },
      {
        "state": "یزد",
        "city": "مروست",
        "latitude": "30.4774172",
        "longitude": "54.2126137",
        "province": "خاتم"
      },
      {
        "state": "یزد",
        "city": "مهریز",
        "latitude": "31.5841945",
        "longitude": "54.4445661",
        "province": "مهریز"
      },
      {
        "state": "یزد",
        "city": "تفت",
        "latitude": "31.752049",
        "longitude": "54.217422",
        "province": "تفت"
      },
      {
        "state": "یزد",
        "city": "اشکذر",
        "province": "اشکذر",
        "latitude": "32.000526",
        "longitude": "54.2071804"
      },
      {
        "state": "یزد",
        "city": "نی ریز",
        "latitude": "29.189811",
        "longitude": "54.313446",
        "province": "نی ریز"
      },
      {
        "state": "یزد",
        "city": "هرات",
        "latitude": "30.049825",
        "longitude": "54.374208",
        "province": "خاتم"
      }
    ]';

SELECT *
FROM OPENJSON(@json) WITH (
    [state] NVARCHAR(50) 'strict $.state',
    city NVARCHAR(50) '$.city',
	province NVARCHAR(50) '$.province',
    latitude NVARCHAR(50) '$.latitude',
	longitude NVARCHAR(50) '$.longitude'
    ) where [state]=N'یزد'
