//
//  BabyNutritionVC.swift
//  MomCare
//
//  Created by Eissa on 5/4/20.
//  Copyright © 2020 Eissa. All rights reserved.
//

import UIKit

extension BabyNutritionVC : UICollectionViewDataSource {
    
    func setupCollectionView(){
        self.babyNutrionCollView.dataSource = self
        self.babyNutrionCollView.delegate = self
        babyNutrionCollView.registerCell(cell: PregnancySupplementCVCell.self)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.guideArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PregnancySupplementCVCell", for: indexPath) as! PregnancySupplementCVCell
        //"Child Nutrition Guide", "Industrial breastfeeding", "Breastfeeding" ," Does your baby have enough amount of sleep"
        switch indexPath.item {
        case 0:
            cell.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.6705882353, blue: 0.2078431373, alpha: 1)
            cell.shadowDecorate(color: #colorLiteral(red: 0.9490196078, green: 0.6705882353, blue: 0.2078431373, alpha: 1))
        case 1:
            cell.backgroundColor = #colorLiteral(red: 0.1647058824, green: 0.6470588235, blue: 0.6745098039, alpha: 1)
            cell.shadowDecorate(color: #colorLiteral(red: 0.1647058824, green: 0.6470588235, blue: 0.6745098039, alpha: 1))
            
        case 2:
            cell.backgroundColor = #colorLiteral(red: 0.9176470588, green: 0.3450980392, blue: 0.07058823529, alpha: 1)
            cell.shadowDecorate(color: #colorLiteral(red: 0.9176470588, green: 0.3450980392, blue: 0.07058823529, alpha: 1))
        case 3:
            cell.backgroundColor = #colorLiteral(red: 0.1647058824, green: 0.6470588235, blue: 0.6745098039, alpha: 1)
            cell.shadowDecorate(color: #colorLiteral(red: 0.1647058824, green: 0.6470588235, blue: 0.6745098039, alpha: 1))
            
        default:
            break
        }
        cell.nutritionTitle.text = self.guideArr[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = collectionView.bounds
        
        return CGSize(width: bounds.width/3.5, height: 100)
    }
    
}

extension BabyNutritionVC : UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 1.0, right: 10)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        //Horizental Spacing
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        //Vertical Spacing
        return 10
    }
}

extension BabyNutritionVC : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //var guideArr = ["دليل تغذيه الطفل", "الرضاعه الصناعيه", "الرضاعه الطبيعيه" ," هل نام طفلك بالقدر الكافي"]
        let vc = ChildNutritionGuideVC(nibName: "ChildNutritionGuideVC", bundle: nil)
        vc.nutritionLbl = self.guideArr[indexPath.row]
        switch indexPath.row {
        case 0:
            vc.titlee1 = "فيتامينات الرضاعة الطبيعية"
            vc.titlee2 = "الأطعمةالواجب تجنبهاأثناء فترةالرضاعةالطبيعية"
            vc.text1 = "ينصح بشدة اتباعك لنظام غذائي صحي غني بالخضراوات والحبوب أثناء فترة الرضاعة الطبيعية، وذلك حفاظاً على صحتك ولضمان نمو طفلك وتطوره بشكل سليم. ومع ذلك، فإن الواقع هو أن الحمل قد يتسبب في نقص التغذية بالنسبة للأمهات الجديدة. والحقيقة الثانية أنه ومع وجود طفل جديد في المنزل، فمن الصعب جداً الالتزام بنظام غذائي صحي حيث يمكن أن يستغرق ذلك وقتاً أكثر مما تعتقديه!   تذكري: ما تأكلينه وتشربينه من الممكن أن ينتقل إلى طفلك عن طريق حليب الثدي. في حين أن بعض القواعد المتعلقة بالتغذية تعتبر أكثر صرامة خلال فترة الحمل، فهناك بعض النصائح لإرشادك أثناء فترة الرضاعة الطبيعية."
            vc.text2 = "الأطعمة والمشروبات التي يتعين تجنبها أثناء فترة الرضاعة الطبيعية   الكافيين: حاولي التقليل من تناولك اليومي للقهوة أو المشروبات الأخرى التي تحتوي على الكافيين (حتى 2-3 كوب يوميا). ففي حال تناول تلك المشروبات بكثرة، فإن ذلك سيجعل الطفل مضطرب أو لا ينام جيدا   الكحول: يجب الامتناع عن تناول الكحول خلال فترة الرضاعة الطبيعية.  تناول كميات كبيرة من الأغذية المصنعة: التقليل من الأطعمة المعبئة والمعلبة والمُصنعة المتوافرة في السوبر ماركت والأغذية والوجبات السريعة التي يكون بها كميات كبيرة من الصوديوم والسكريات"
        case 1:
            vc.titlee1 = "كمية الرضاعة الصناعية للطفل وفقاً لعمر"
            vc.titlee2 = "مدة صلاحية الحليب الصناعي البارد"
            vc.text1 = " حديثو الولادة (رضاعة طبيعية) من 6 إلى 8 رضعا  حديثو الولادة ( رضاعة صناعية) من 6 إلى 8 رضعات 4 إلى 6 شهور 2 وجبة طعام صلب - 6 رضعات 6 إلى 8 شهور 4 وجبات طعام صلب - 4 رضعات 8 إلى 12 شهر 6 وجبات طعام صلب - رضعتان السنة الأولى 6 وجبات طعام صلب مع زيادة في المقدار - رضعتان  سن سنتين وما بعدها ٣ وجبات رئيسية - وجبتان خفيفتان - رضعة أو رضعتان حتى الفطام في سن سنتين."
            vc.text2 = "منعي تقديم الملح قبل إتمامه العام، فقد يضر الملح الكبد، وهو لم يكتمل نموه بعد. امنعي السكر الصناعي. فقط قدمي ما هو حلو بطبيعته. لا تقدمي الحليب البقري قبل سن العام، ويفضل في العموم عدم تقديم الحليب الصناعي له، وفي كل الأحوال لا تقدميه قبل العام أيضًا.  إذا قررت تقديم اللحوم له، تأكدي أنها من مصدر جيد، وأعطيه كميات قليلة، لأن اللحوم صعبة الهضم. لا تفطميه إلا عند في عمر العامين، حفاظًا على حالته النفسية والعاطفيه"
        case 2:
            vc.titlee1 = "نصائح لتغذية سليمة للرضيع"
            vc.titlee2 = "عدد وجبات الطفل المناسبة لكل سن"
            vc.text1 = "لأن الجهازَ العصبي لحديثي الولادة غير ناضج، فإن الأطفالَ حديثي الولادة ينامون كثيرًا، ولكن لمدة ساعة أو ساعتين في كلِّ مرة، بغضِّ النظر عمَّا إذا كان الوقت نهارًا أم ليلًا. ويدخل الكثير من الرضع بعمر 4-6 أسابيع دورةً من الاستيقاظ لمدة 4 ساعات، والنوم لمدة 4 ساعات. وبعمر 4-6 أشهر، يكون الرضع قادرين على تبنِّي جدول نوم يومي عادة. وعندما يُتمُّون عامهم الأوَّل، ينام معظم الرضع من 8-9 ساعات باستمرار طوال الليل. ومع ذلك، تكون اضطرابات النوم شائعة، وتحدث في أوقات مختلفة خلال السنوات القليلة الأولى (انظر مشاكل النوم عند الأطفال"
            vc.text2 = "حدوث قلق الانفصال . تَمكُّن الأطفال من التحرّك بشكل مستقل والسيطرة على محيطهم.قد يأخذ الأطفال قيلولةً طويلةً في فترة ما بعد الظهيرة.إمكانيَّة حدوث فرط تنبيه في أثناء اللعب قبل النوم. تميلالكوابيس إلى أن تُصبح أكثرَ شيوعًا . يمكن للوالدين مساعدة الرضع على النوم ليلًا من خلال حمل وهزّ الطفل بشكل خفيف في وقت متأخِّر من المساء والحفاظ على غرفة الطفل مظلمة في الليل، وهو أمرٌ مهم لتنامي الرؤية الطبيعيَّة. وينبغي تشجيعُ الرضع في سن مبكر على النوم من تلقاء أنفسهم، وليس على ذراعي أحد الوالدين. وبهذه الطريقة، سوف يصبحون قادرين على تهدئة أنفسهم عندما يستيقظون في منتصف الليل."
        case 3:
            vc.titlee1 = "النوم عند حديثي الولاده والرضع "
            vc.titlee2 = "الأطعمةالواجب تجنبهاأثناء فترةالرضاعةالطبيعية"
            vc.text1 = "لأن الجهازَ العصبي لحديثي الولادة غير ناضج، فإن الأطفالَ حديثي الولادة ينامون كثيرًا، ولكن لمدة ساعة أو ساعتين في كلِّ مرة، بغضِّ النظر عمَّا إذا كان الوقت نهارًا أم ليلًا. ويدخل الكثير من الرضع بعمر 4-6 أسابيع دورةً من الاستيقاظ لمدة 4 ساعات، والنوم لمدة 4 ساعات. وبعمر 4-6 أشهر، يكون الرضع قادرين على تبنِّي جدول نوم يومي عادة. وعندما يُتمُّون عامهم الأوَّل، ينام معظم الرضع من 8-9 ساعات باستمرار طوال الليل. ومع ذلك، تكون اضطرابات النوم شائعة، وتحدث في أوقات مختلفة خلال السنوات القليلة الأولى (انظر مشاكل النوم عند الأطفال"
            vc.text2 = "حدوث قلق الانفصال . تَمكُّن الأطفال من التحرّك بشكل مستقل والسيطرة على محيطهم.قد يأخذ الأطفال قيلولةً طويلةً في فترة ما بعد الظهيرة.إمكانيَّة حدوث فرط تنبيه في أثناء اللعب قبل النوم. تميلالكوابيس إلى أن تُصبح أكثرَ شيوعًا . يمكن للوالدين مساعدة الرضع على النوم ليلًا من خلال حمل وهزّ الطفل بشكل خفيف في وقت متأخِّر من المساء والحفاظ على غرفة الطفل مظلمة في الليل، وهو أمرٌ مهم لتنامي الرؤية الطبيعيَّة. وينبغي تشجيعُ الرضع في سن مبكر على النوم من تلقاء أنفسهم، وليس على ذراعي أحد الوالدين. وبهذه الطريقة، سوف يصبحون قادرين على تهدئة أنفسهم عندما يستيقظون في منتصف الليل."
        default:
            return
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

