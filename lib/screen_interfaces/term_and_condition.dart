import 'package:flutter/material.dart';
import 'package:lakevistaapp/provider/term_checkbox.dart';
import 'package:lakevistaapp/screen_interfaces/payment.dart';
import 'package:provider/provider.dart';

class TermAndConditionScreen extends StatefulWidget {
  const TermAndConditionScreen({super.key});

  @override
  State<TermAndConditionScreen> createState() => _TermAndConditionScreenState();
}

class _TermAndConditionScreenState extends State<TermAndConditionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            const Center(child: Text('TERMS & CONDITIONS', style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),)),
            const SizedBox(height: 5,),
            const Text(
              '''
We are committed to protect your privacy within the society. We constantly review our systems and data to ensure the best possible service to our customers. Client records are regarded as confidential and therefore will not be divulged to any third party, other than our vendors and if legally required to do so to the appropriate authority.
1. The terms and conditions are specific to the residential and commercial plots.
2. All residents of Pakistan and Overseas Pakistanis are eligible to apply for the booking of a Residential/Commercial Plots.
3. This the submission of Booking Form, with or without signature/thumb impression will be considered the intention to buy the property applied for and can only be used for booking in the name of the Applicant.
4. The Original Form must be attached along with other required documents.
5. One form can only be used for the booking of a single property.
6. All columns and entries must be completed in BLOCK LETTERS. No entry is to be left blank. An Incomplete Booking Form will not be processed.
7. The Applicant(s) / Allotee(s) shall be directly responsible for payment of all dues as per the methods / details duly agreed at the time of purchase, specified in the terms and conditions and also Payment Schedule
8. All payments are to be made in the shape of Pay order/Bank Draft/Cash according to the Category Size of the property, as per the schedule of payments in favor of ”Lake vista ” at designated offices or its bank account at SILK BANK ACCOUNT TILE : LAKE VISTA Account no. 5000484786 BRANCH CODE 5098 IBN NO. PK231SAUD0050985000484786 DHA PHASE 2 BRANCH ISLAMABAD. Any changes in bank details, in future, will be updated and informed to all members through e-mails, text messages at given mobile numbers.
9. Installments received after the due date from the allottee/applicants will only be accepted with a surcharge of 0.05% per day. Provided that if any allottee fails to pay 2 successive installments within the prescribed period, the allotment is liable to be canceled without notice. In the event of the cancellation of the plot, the submitted payment will be refunded with a 50% deduction from the down payment and a 20% deduction from the amount paid in installments without any profit, interest, or markup; however, the Registration/processing fee already paid is non-refundable. Refund can only be claimed by submitting the REFUND FORM with the Management, and the Management after due procedure will approve a payment schedule of refund to which the applicant will have no objection.
10. The development charges shall be applied as per the schedule given by the Management, and will be payable when demanded, failing which the plot will stand canceled.
11. No applicant shall be entitled to claim or receive any interest/mark up against the amounts paid by him.
12. The discount, if any, formally announced by the Management will be made available to the relevant applicant and accordingly adjusted in the last Installment of dues against the allotted plot.
13. All applications according to their categories of residential plots will be entertained on a first-come, first-serve basis and timely completion of payments.
14. A plot once allotted or transferred cannot be surrendered or applied for cancellation by the applicant, and all amounts paid on account thereof shall be NON-REFUNDABLE. However, in case the plot is canceled on details specified in Para #9, or any reason whatsoever, then the submitted payment will be refunded as specified in para #9.
15. For each location, i.e., corner, facing park, main road (40’ to 100’), applicants will pay 10% premium each after the balloting. In case of multiple preferences in location, for example, the main road (40’ to 100’), corner, and park facing plot, the applicant will be charged 30% in addition to the total amount, including development charges. For the plot falling on Main Boulevard, 15% extra is to be paid by the allottee.
16. An application once registered or the rights of application transferred cannot be surrendered back to the firm unless canceled as per para No. 9.
17. A plot allotted to an applicant shall not be used by the allottee for any purpose other than that applied or meant for.
18. Only pre-approved elevation for a given plot can be constructed on the plots. No further construction or modification to any constructions can be done without the prior approval of the Management.
19. Notwithstanding the balloting, the exact size and location of the plot will remain tentative and subject to adjustment in accordance with demarcation/measurement of the plot at the time of handing over of possession.
20. In case of extra area (over and above the allotted area) with any plot, proportionate extra amount will be charged in addition to the total amount.
21. Transfer of allotted plot even before possession shall be allowed only after the receipt of an updated “No Demand Certificate" from the Management. All charges shall be borne by the allottee. The seller and purchaser are required to be present in front of the transfer officer.
22. To be eligible for the balloting, either plot or allocation (whichever is applicable), 40% of the land cost must be paid along with other relevant charges as specified by the Management.
23. Balloting will only decide the allotment of a plot. The exact location of the plots for the Successful applicants will be determined through further computerized balloting in due course of time.
24. Upon successful and timely completion of the payment of the cost of land as well as development charges and its acknowledgment by the Management, upon procurement of required land against this application, upon approval of the housing scheme and its layout plan along with extensions on the said land, by RDA or the concerned department, and upon the completion of development work at the site, the applicant shall qualify for possession of a plot applied for in the Lake Vista.
25. All Registration and Mutation charges shall be borne by the allottee along with any other government taxes.
26. The Management reserves the right to allot, sell, or a plot canceled from the name of the allottee due to nonpayment of dues, or any reason whatsoever, to any other applicant or person, and the ex-allottee shall have no right to such a plot. The Management decision in this regard shall be final.
27. Development charges include the charges of internal development for roads, footpaths, main water supply, and sewerage, but do not include the cost/charges of provision of electricity, sui-gas, telephone, mosque, maintenance & transport system, etc. All the utilities service and security charges will be borne by the applicant.
28. In addition to the dues and any dues payable under applicable laws, the allottee will be liable to pay escalation and other charges at the rates to be specified from time to time to accommodate escalations in the cost of raw material and provision of other amenities/services for urban development.
29. Within six months after handing over the possession of the plot, the applicant will submit to the Management the site/building plan, and after the due procedure, the said plan will be handed over to the applicant, and he will start the construction no later than one month of this.
30. In case of any dispute, the matter will be referred for arbitration to an authorized officer of the Lake Vista, whose decision shall be final and binding on the parties to the dispute.
31. Every applicant will abide by these Terms and Conditions in addition to the bye-laws, rules, and regulations governing allotment, possession, ownership construction and transfer of plots, enforced from time to time by the Management, and any other Authority Department competent to do so, in accordance with applicable laws.
32. Any additional charges (if imposed) shall be payable as determined by the Management from time to time.
33. In case the Management by virtue of any reason, fails to allot a plot, the applicant shall not make any claim of damage, compensation or interest and only will be eligible to the refund as per Para No.9.
34. The Management can accept or reject any application without assigning any reason.''',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 7,),
            Row(
              children: [
                Consumer<TermCheckBoxProvider>(
                    builder: (context, checkBoxProvider, child){
                      return Checkbox(
                          checkColor: Colors.white,
                          value: checkBoxProvider.isCheck,
                          onChanged: (bool? value){
                            checkBoxProvider.selectCheckBox(value!);
                          });
                    }
                ),
                const Expanded(child: Text('I have read and understood all the Rules and Regulations accompanying this form along with attached COST OF LAND PAYMENT SCHEDULE and I hereby agree to abide by these TERMS AND CONDITIONS existing and of future of Lake Vista as well as all laws and by-laws and rules and regulations of Local Administration.',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                ),)),
              ],
            ),
            const SizedBox(height: 5,),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentScreen()));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
