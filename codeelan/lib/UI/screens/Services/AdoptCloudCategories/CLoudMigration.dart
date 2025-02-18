 import 'package:codeelan/DataObjects/ServiceData/AdoptCloudData/CloudMigrationServiceData.dart';
import 'package:codeelan/Utils/app_colors.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import '../../../../DataObjects/TestimonialListData.dart';
import '../../../../Utils/Responsive.dart';
import '../../../../Utils/widgets.dart';

class CloudMigration extends StatefulWidget {
  const CloudMigration({Key? key}) : super(key: key);

  @override
  State<CloudMigration> createState() => _CloudMigrationState();
}

class _CloudMigrationState extends State<CloudMigration>
    with TickerProviderStateMixin {
  double height = 0.0;
  double width = 0.0;
  double size = 0.0;

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();
  late final Animation<double> _animationa = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastLinearToSlowEaseIn,
  );
  late final Animation<double> _animationb = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastLinearToSlowEaseIn,
  );
  late final Animation<double> _animationc = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastLinearToSlowEaseIn,
  ); // Animation with a fast linear to slow ease-in curve

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    size = MediaQuery.of(context).size.longestSide;

    return Scafold_Dekstop_widget(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                ? TabsWidget()
                : const SizedBox(),
            Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                ? Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 500,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(120.0),
                                  ),
                                  border: Border(
                                    bottom:
                                        BorderSide(color: AppColor.lightBlue),
                                    right:
                                        BorderSide(color: AppColor.lightBlue),
                                  ),
                                  gradient: LinearGradient(
                                    stops: [.76, .76],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      AppColor.darkBlueColor,
                                      AppColor.lightBlue
                                    ],
                                  ),
                                  color: AppColor.darkBlueColor),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Text(
                                        "Cloud Migration",
                                        style: TextStyle(
                                          fontFamily: 'Arial',
                                          fontSize:
                                              Responsive.isDesktop(context) ||
                                                      Responsive.isk4Desktop(
                                                          context)
                                                  ? 40
                                                  : 26,
                                          color: Colors.white,
                                          letterSpacing: .5,
                                          fontWeight: FontWeight.w900,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * .01,
                                    ),
                                    Center(
                                      child: SizedBox(
                                        width: width * .35,
                                        child: Text(
                                          'The Cloud Migration service at CodeElan empowers businesses to seamlessly transition their operations to the cloud, unlocking the numerous benefits of scalability, flexibility, and cost-efficiency. We understand that migrating to the cloud can be a complex and challenging process, which is why our team of experts is here to guide you every step of the way. With our proven methodologies and extensive experience, we ensure a smooth and successful migration, enabling you to leverage the full power of the cloud.',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Arial',
                                              fontSize: 16,
                                              letterSpacing: .5,
                                              height: 1.5),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Center(
                                      child: Container(
                                        width: 150,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        alignment: Alignment.center,
                                        child: TextButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            backgroundColor: WidgetStateProperty
                                                .resolveWith<Color>(
                                                    (Set<WidgetState> states) {
                                              if (states.contains(
                                                  WidgetState.hovered)) {
                                                return AppColor.darkBlueColor;
                                              }
                                              return Colors.white;
                                            }),
                                            foregroundColor: WidgetStateProperty
                                                .resolveWith<Color>(
                                                    (Set<WidgetState> states) {
                                              if (states.contains(
                                                  WidgetState.hovered)) {
                                                return Colors.white;
                                              }
                                              return AppColor.darkBlueColor;
                                            }),
                                            shape: WidgetStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 50,
                                            width: 150,
                                            child: Text('Get Started',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w700,
                                                    // color: AppColor.buttonBlueColor,
                                                    letterSpacing: 1)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: Container(
                                height: 400,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(100.0),
                                    ),

                                    // gradient: LinearGradient(
                                    //   stops: [.8, .8],
                                    //   begin: Alignment.bottomRight,
                                    //   end: Alignment.topLeft, colors: [AppColor.darkBlueColor,AppColor.lightBlue],),

                                    color: AppColor.lightBlue),
                              )),
                        ],
                      ),
                      Positioned(
                        right: 100,
                        child: SizeTransition(
                          sizeFactor: _animationc,
                          axis: Axis.horizontal,
                          axisAlignment: -1,
                          child: Image.asset(
                            'cloudmigrationBG.png',
                            height: 300,
                          ),
                        ),
                      ),
                    ],
                  )
                : Stack(
                    alignment: Alignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // height: 500,
                            decoration:
                                BoxDecoration(color: AppColor.darkBlueColor),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Text(
                                      "Cloud Migration",
                                      style: TextStyle(
                                        fontFamily: 'Arial',
                                        fontSize: Responsive.isDesktop(
                                                    context) ||
                                                Responsive.isk4Desktop(context)
                                            ? 40
                                            : 26,
                                        color: Colors.white,
                                        letterSpacing: .5,
                                        fontWeight: FontWeight.w900,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * .01,
                                  ),
                                  Center(
                                    child: SizedBox(
                                      // width: width * .35,
                                      child: Text(
                                        'The Cloud Migration service at CodeElan empowers businesses to seamlessly transition their operations to the cloud, unlocking the numerous benefits of scalability, flexibility, and cost-efficiency. We understand that migrating to the cloud can be a complex and challenging process, which is why our team of experts is here to guide you every step of the way. With our proven methodologies and extensive experience, we ensure a smooth and successful migration, enabling you to leverage the full power of the cloud.',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Arial',
                                            fontSize: 16,
                                            letterSpacing: .5,
                                            height: 1.5),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                    child: Container(
                                      width: 200,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      alignment: Alignment.center,
                                      child: TextButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                          backgroundColor: WidgetStateProperty
                                              .resolveWith<Color>(
                                                  (Set<WidgetState> states) {
                                            if (states.contains(
                                                WidgetState.hovered)) {
                                              return AppColor.darkBlueColor;
                                            }
                                            return Colors.white;
                                          }),
                                          foregroundColor: WidgetStateProperty
                                              .resolveWith<Color>(
                                                  (Set<WidgetState> states) {
                                            if (states.contains(
                                                WidgetState.hovered)) {
                                              return Colors.white;
                                            }
                                            return AppColor.darkBlueColor;
                                          }),
                                          shape: WidgetStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 50,
                                          // width: 200,
                                          child: Text('Schedule a Quick Call',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  // color: AppColor.buttonBlueColor,
                                                  letterSpacing: 1)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: AppColor.darkBlueColor,
                            child: Center(
                              child: SizeTransition(
                                sizeFactor: _animationc,
                                axis: Axis.horizontal,
                                axisAlignment: -5,
                                child: Image.asset(
                                  'cloudmigrationBG.png',
                                  height: 300,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
            CompaniesSliderWidget(),
            weOffer(),
            howWorks(),
            SizedBox(
              height: height * .05,
            ),
            exclusiveFeatures(),
            SizedBox(
              height: height * .08,
            ),
            whyCodeelan(),
            testimonials(),
            testimonialSlider(),
            contactus(),
            contactForm(),
            helpdesk()
          ],
        ),
      ),
    );
  }

  Widget weOffer() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                  text: 'WHAT WE ',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    color: AppColor.primary,
                    fontSize: 35,
                    height: height * .002,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'OFFER?',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          color: AppColor.subHeadingColor,
                          fontSize: 35,
                          height: height * .002,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1,
                        )),
                  ])),
          SizedBox(
              width: width * .2,
              child: Divider(
                thickness: 4,
                color: AppColor.buttonBlueColor,
              )),
          SizedBox(
            height: height * .05,
          ),
          Container(
            width:
                Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                    ? width * .75
                    : width,
            alignment: Alignment.center,
            padding:
                Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                    ? EdgeInsets.zero
                    : EdgeInsets.only(left: 20, right: 20),
            child: Text(
              'By implementing industry best practices and leveraging cutting-edge technologies, we ensure a robust foundation that forms the basis for your cloud transformation.',
              style: TextStyle(
                color: AppColor.subHeadingColor,
                fontSize: 16,
              ),
              textAlign: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                  ? TextAlign.center
                  : TextAlign.start,
            ),
          ),
          Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
              ?  Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    ServicesGrid(
                        cloudMigrationServiceList[0].icon,
                        cloudMigrationServiceList[0].title,
                        cloudMigrationServiceList[0].subTitle),
                    SizedBox(
                      height: height * .02,
                    ),
                    ServicesGrid(
                        cloudMigrationServiceList[2].icon,
                        cloudMigrationServiceList[2].title,
                        cloudMigrationServiceList[2].subTitle),
                    SizedBox(
                      height: height * .02,
                    ),
                    ServicesGrid(
                        cloudMigrationServiceList[4].icon,
                        cloudMigrationServiceList[4].title,
                        cloudMigrationServiceList[4].subTitle)
                  ],
                ),
              ),
              SizedBox(
                width: width * .01,
              ),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    ServicesGrid(
                        cloudMigrationServiceList[1].icon,
                        cloudMigrationServiceList[1].title,
                        cloudMigrationServiceList[1].subTitle),
                    SizedBox(
                      height: height * .02,
                    ),
                    ServicesGrid(
                        cloudMigrationServiceList[3].icon,
                        cloudMigrationServiceList[3].title,
                        cloudMigrationServiceList[3].subTitle),
                    SizedBox(
                      height: height * .02,
                    ),
                    ServicesGrid(
                        cloudMigrationServiceList[5].icon,
                        cloudMigrationServiceList[5].title,
                        cloudMigrationServiceList[5].subTitle)
                  ],
                ),
              ),
            ],
          ): Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ServicesGrid(
                    cloudMigrationServiceList[0].icon,
                    cloudMigrationServiceList[0].title,
                    cloudMigrationServiceList[0].subTitle),
                SizedBox(
                  height: height * .02,
                ),
                ServicesGrid(
                    cloudMigrationServiceList[1].icon,
                    cloudMigrationServiceList[1].title,
                    cloudMigrationServiceList[1].subTitle),
                SizedBox(
                  height: height * .02,
                ),
                ServicesGrid(
                    cloudMigrationServiceList[2].icon,
                    cloudMigrationServiceList[2].title,
                    cloudMigrationServiceList[2].subTitle),
                SizedBox(
                  height: height * .02,
                ),
                ServicesGrid(
                    cloudMigrationServiceList[3].icon,
                    cloudMigrationServiceList[3].title,
                    cloudMigrationServiceList[3].subTitle),
                SizedBox(
                  height: height * .02,
                ),
                ServicesGrid(
                    cloudMigrationServiceList[4].icon,
                    cloudMigrationServiceList[4].title,
                    cloudMigrationServiceList[4].subTitle),
                SizedBox(
                  height: height * .02,
                ),
                ServicesGrid(
                    cloudMigrationServiceList[5].icon,
                    cloudMigrationServiceList[5].title,
                    cloudMigrationServiceList[5].subTitle),
              ],
            ),
          ),
          Container(
              width: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                  ?  width * .75:width,
              alignment: Alignment.center,
              child: Image.asset('Cloud-Migration-What-we-offer_1_.png'))
        ],
      ),
    );
  }

  Widget ServicesGrid(Widget icon, String title, String subTitle) {
    return Container(
        color: Colors.black,
        width: 500,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon,
            SizedBox(
              height: height * .01,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: height * .01,
            ),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
              overflow: TextOverflow.clip,
              // maxLines: 4,
            )
          ],
        ));
  }

  Widget howWorks() {
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                  text: 'HOW IT ',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    color: AppColor.primary,
                    fontSize: 30,
                    height: height * .002,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'WORKS?',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          color: AppColor.subHeadingColor,
                          fontSize: 30,
                          height: height * .002,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1,
                        )),
                  ])),
          SizedBox(
              width: width * .2,
              child: Divider(
                thickness: 4,
                color: AppColor.buttonBlueColor,
              )),
          SizedBox(
            height: height * .05,
          ),
              Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                  ?    Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizeTransition(
                sizeFactor: _animationc,
                axis: Axis.horizontal,
                axisAlignment: -1,
                child: Container(
                    width: width * .4,
                    child: Column(
                      children: [
                        howWorkWidget('Assessment And Discovery',
                            'Our experts conduct face-to-face interviews with your business and IT stakeholders to understand your migration goals. We perform an architectural assessment, identify opportunities for optimization, and assess the operational maturity of your cloud environment.'),
                        howWorkWidget('Strategy And Planning',
                            'Based on the assessment, we develop a detailed roadmap towards your target state, including a validation of the business case and identification of potential issues and risk mitigation options.'),
                        howWorkWidget('Migration Execution',
                            'We execute the migration plan in a phased manner, ensuring minimal disruption to your operations. Our experts handle the migration of applications, processes, and infrastructure according to the chosen migration approach.'),
                        howWorkWidget('Validation And Optimization',
                            'After the migration is complete, we conduct thorough testing and validation to ensure the functionality, performance, scalability, and security of your migrated systems. We optimize the cloud environment to maximize cost-efficiency and performance.')
                      ],
                    )),
              ),
              SizedBox(
                width: width * .1,
              ),
              SizeTransition(
                sizeFactor: _animationb,
                axis: Axis.horizontal,
                axisAlignment: -1,
                child: Image.asset(
                  'cloud-services.png',
                  height: 400,
                ),
              ),
            ],
          ): Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizeTransition(
                    sizeFactor: _animationc,
                    axis: Axis.horizontal,
                    axisAlignment: -1,
                    child: Column(
                      children: [
                        howWorkWidget('Consultation And Assessment',
                            'Our experts collaborate closely with your team to understand your unique business requirements, current infrastructure, and goals for adopting Kubernetes.'),
                        howWorkWidget('Strategy Development And Planning',
                            'Based on the assessment, we develop a tailored Kubernetes adoption strategy and roadmap, outlining key milestones, timelines, and resource requirements.'),
                        howWorkWidget('Implementation And Deployment',
                            'Our skilled engineers handle the setup, configuration, and deployment of Kubernetes clusters, ensuring seamless integration with your existing infrastructure and applications.'),
                        howWorkWidget('Monitoring And Optimization',
                            'Implement monitoring and alerting systems to continuously monitor the health and performance of your Kubernetes environment, analyzing data to identify optimization opportunities and make necessary adjustments for improved efficiency.'),
                        SizeTransition(
                          sizeFactor: _animationb,
                          axis: Axis.horizontal,
                          axisAlignment: -1,
                          child: Image.asset(
                            'cloud-services.png',
                            height: 400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * .01,
                  ),
                ],
              ),
        ]));
  }

  Widget howWorkWidget(String title, String subTitle) {
    return ListTile(
      leading: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.lightGreen,
          ),
          padding: EdgeInsets.all(10),
          child: Icon(
            Icons.add,
            color: AppColor.primary,
          )),
      title: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subTitle,
          style: TextStyle(fontSize: 16, color: AppColor.subHeadingColor)),
    );
  }

  Widget exclusiveFeatures() {
    return Container(
      color: AppColor.lightBackground,
      child:  Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: width * .7,
            alignment: Alignment.centerLeft,
            child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                    text: 'EXCLUSIVE ',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      color: AppColor.primary,
                      fontSize: 35,
                      height: height * .002,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'FEATURES',
                          style: TextStyle(
                            fontFamily: 'Arial',
                            color: AppColor.subHeadingColor,
                            fontSize: 35,
                            height: height * .002,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1,
                          )),
                    ])),
          ),
          SizedBox(
            height: height * .03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                child: ExclusiveContainer('Zero Data Loss',
                    'We prioritize data integrity throughout the migration process. Our experts implement robust strategies and tools to ensure minimal data loss or corruption during the migration.'),
              ),
              SizedBox(
                width: width * .01,
              ),
              Image.asset(
                'exclusiveFeatures.png',
                height: height * .3,
                width: width * .35,
                alignment: Alignment.topCenter,
              )
            ],
          ),
          SizedBox(
            height: height * .03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ExclusiveContainer('Application Compatibility',
                  'We assess your applications and determine the best migration approach to ensure compatibility and optimal performance in the cloud environment.'),
              SizedBox(
                width: width * .01,
              ),
              ExclusiveContainer('Cost Optimization',
                  'We help you optimize your cloud spend by implementing cost-effective solutions, leveraging auto-scaling capabilities, and providing insights into resource utilization and optimization opportunities.')
            ],
          ),
          SizedBox(
            height: height * .03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ExclusiveContainer('Scalability And Flexibility',
                  'Our cloud foundation solutions are designed to scale with your business. Whether you experience rapid growth or need to adjust your infrastructure, we ensure flexibility and adaptability to meet your evolving needs.'),
              SizedBox(
                width: width * .01,
              ),
              ExclusiveContainer('Reliability And Performance',
                  'Our focus on building a resilient infrastructure ensures high availability, fault tolerance, and excellent performance for your applications and services, enabling uninterrupted operations and improved customer experiences.')
            ],
          ),
          SizedBox(
            height: height * .05,
          )
        ],
      )
          : Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width,
              child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      text: 'EXCLUSIVE ',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        color: AppColor.primary,
                        fontSize: 35,
                        height: height * .002,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'FEATURES',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              color: AppColor.subHeadingColor,
                              fontSize: 35,
                              height: height * .002,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1,
                            )),
                      ])),
            ),
            SizedBox(
              height: height * .03,
            ),
            Container(
              child: ExclusiveContainer('Zero Data Loss',
                  'We prioritize data integrity throughout the migration process. Our experts implement robust strategies and tools to ensure minimal data loss or corruption during the migration.'),
            ),
            Center(
              child: Image.asset(
                'exclusiveFeatures.png',
                height: height * .3,
                width: width * .35,
                alignment: Alignment.center,
              ),
            ),
            SizedBox(
              height: height * .03,
            ),
            ExclusiveContainer('Application Compatibility',
                'We assess your applications and determine the best migration approach to ensure compatibility and optimal performance in the cloud environment.'),
            SizedBox(
              height: height * .03,
            ),
            ExclusiveContainer('Cost Optimization',
                'We help you optimize your cloud spend by implementing cost-effective solutions, leveraging auto-scaling capabilities, and providing insights into resource utilization and optimization opportunities.'),
      SizedBox(
              height: height * .03,
            ),
            ExclusiveContainer('Scalability And Flexibility',
                'Our cloud foundation solutions are designed to scale with your business. Whether you experience rapid growth or need to adjust your infrastructure, we ensure flexibility and adaptability to meet your evolving needs.'),
            SizedBox(
              height: height * .03,
            ),
            ExclusiveContainer('Reliability And Performance',
                'Our focus on building a resilient infrastructure ensures high availability, fault tolerance, and excellent performance for your applications and services, enabling uninterrupted operations and improved customer experiences.')
          ],
        ),
      ),
    );
  }

  Widget whyCodeelan() {
    return Container(
      child: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? Stack(
              children: [
                Center(
                  child: Container(
                    height: height * .5,
                    width: width * .5,
                    color: AppColor.cardBlueColor,
                    padding: EdgeInsets.only(left: 220, right: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Why CodeElan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 38,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: height * .02,
                        ),
                        Text(
                          'At CodeElan, we are committed to empowering businesses to thrive in the cloud era. With our Build Cloud Foundation service, you can confidently embrace the cloud, knowing that you have a solid and reliable infrastructure in place. Our tailored solutions, expertise, and ongoing support ensure a seamless transition and unlock the full potential of the cloud for your organization. Let us be your trusted partner on your cloud journey and accelerate your success.',
                          style: TextStyle(
                              color: Colors.white, fontSize: 14, height: 1.5),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: width * .65,
                  child: SizedBox(
                    height: height * .5,
                    child: CircleAvatar(
                      radius: 150,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: ClipOval(
                          child: Image.asset(
                            'Logo-Inverted.jpg',
                            // width: 100.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          : Container(
              color: AppColor.lightBackground,
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 150,
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: ClipOval(
                        child: Image.asset(
                          'Logo-Inverted.jpg',
                          // width: 100.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // height: height * .8,
                    // width: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                    //     ? width * .5:width,
                    color: AppColor.cardBlueColor,
                    padding: EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Why CodeElan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 38,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: height * .02,
                        ),
                        Text(
                          'At CodeElan, we are committed to empowering businesses to thrive in the cloud era. With our Build Cloud Foundation service, you can confidently embrace the cloud, knowing that you have a solid and reliable infrastructure in place. Our tailored solutions, expertise, and ongoing support ensure a seamless transition and unlock the full potential of the cloud for your organization. Let us be your trusted partner on your cloud journey and accelerate your success.',
                          style: TextStyle(
                              color: Colors.white, fontSize: 14, height: 1.5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Widget testimonials() {
    return Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
        ? Container(
            width: 100,
            alignment: Alignment.center,
            color: Color.fromRGBO(235, 235, 235, 1),
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Testimonials",
                            style:
                                TextStyle(color: AppColor.green, fontSize: 16),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                              width: 40,
                              child: Divider(
                                thickness: 3,
                                color: AppColor.green,
                              )),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: Responsive.isDesktop(context) ||
                                  Responsive.isk4Desktop(context)
                              ? width * .28
                              : width * .3,
                          child: Text(
                            "We are very glad to get client review.",
                            style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: Responsive.isDesktop(context) ||
                                        Responsive.isk4Desktop(context)
                                    ? 36
                                    : 26,
                                color: Color.fromRGBO(29, 27, 76, 1),
                                letterSpacing: .5,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          width: Responsive.isDesktop(context) ||
                                  Responsive.isk4Desktop(context)
                              ? width * .4
                              : width * .5,
                          child: Text(
                            "Let our success stories highlight why our clients trust us for all their software development queries, quality engineering initiatives and digital transformation implementation.",
                            style: TextStyle(
                              color: Color.fromRGBO(79, 79, 103, 1),
                              fontFamily: 'Arial',
                              fontSize: 16,
                              letterSpacing: .5,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ))
        : Container(
            alignment: Alignment.center,
            color: Color.fromRGBO(235, 235, 235, 1),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Testimonials",
                        style: TextStyle(color: AppColor.green, fontSize: 16),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                          width: 40,
                          child: Divider(
                            thickness: 3,
                            color: AppColor.green,
                          )),
                    ]),
                Text(
                  "We are very glad to get client review.",
                  style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: Responsive.isDesktop(context) ||
                              Responsive.isk4Desktop(context)
                          ? 36
                          : 26,
                      color: Color.fromRGBO(29, 27, 76, 1),
                      letterSpacing: .5,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Let our success stories highlight why our clients trust us for all their software development queries, quality engineering initiatives and digital transformation implementation.",
                  style: TextStyle(
                    color: Color.fromRGBO(79, 79, 103, 1),
                    fontFamily: 'Arial',
                    fontSize: 16,
                    letterSpacing: .5,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ));
  }

  Widget testimonialSlider() {
    return Container(
      height: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? 500
          : 450,
      alignment: Alignment.center,
      color: Color.fromRGBO(235, 235, 235, 1),
      padding: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? EdgeInsets.only(
              left: 100,
              right: 100,
              bottom: 20,
              top: 20,
            )
          : EdgeInsets.all(20),
      child: ListView.builder(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: testimonialData.length,
          itemBuilder: (BuildContext context, int index) => Container(
                padding: EdgeInsets.all(10),
                color: Color.fromRGBO(235, 235, 235, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // height: 100,
                      width: 400,
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 40, bottom: 40),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            testimonialData[index].description,
                            style: TextStyle(
                              color: Color.fromRGBO(79, 79, 103, 1),
                              fontFamily: 'Arial',
                              fontSize: Responsive.isDesktop(context) ||
                                      Responsive.isk4Desktop(context)
                                  ? 16
                                  : 14,
                              letterSpacing: .5,
                            ),
                          ),
                          SizedBox(
                            height: height * .04,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_outlined,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Icon(
                                Icons.star_outlined,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Icon(
                                Icons.star_outlined,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Icon(
                                Icons.star_outlined,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Icon(
                                Icons.star_outlined,
                                color: Colors.amber,
                                size: 20,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          stops: [.55, .55],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                          colors: [
                            Color.fromRGBO(235, 235, 235, 1),
                            Colors.white
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * .01,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ClipOval(
                              child: Container(
                                color: AppColor.grey,
                                child: Image.asset(
                                  'Male-User.png',
                                  alignment: Alignment.topCenter,
                                  height: height * .1,
                                  // width: 100.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * .015,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              testimonialData[index].name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: height * .005,
                            ),
                            Text(
                              testimonialData[index].designation,
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
    );
  }

  Widget contactus() {
    return Container(
        width: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? 100
            : width,
        color: Colors.white,
        alignment: Alignment.center,
        // color: Color.fromRGBO(196, 17, 17, 1.0),
        padding:
            Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                ? EdgeInsets.only(left: 210, right: 210, top: 20, bottom: 20)
                : EdgeInsets.all(20),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              SizedBox(
                  width: 40,
                  child: Divider(
                    thickness: 3,
                    color: AppColor.green,
                  )),
              SizedBox(
                width: 10,
              ),
              Text(
                "Contact us",
                style: TextStyle(color: AppColor.green, fontSize: 16),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                  width: 40,
                  child: Divider(
                    thickness: 3,
                    color: AppColor.green,
                  )),
            ]),
            Text("Let’s start discussing your new idea",
                style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 26,
                    letterSpacing: .5,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Text(
              'At CodeElan, we are committed to empowering businesses to thrive in the cloud era. With our Build Cloud Foundation service, you can confidently embrace the cloud, knowing that you have a solid and reliable infrastructure in place. Our tailored solutions, expertise, and ongoing support ensure a seamless transition and unlock the full potential of the cloud for your organization. Let us be your trusted partner on your cloud journey and accelerate your success.',
              style: TextStyle(
                color: Color.fromRGBO(79, 79, 103, 1),
                fontFamily: 'Arial',
                fontSize: 16,
                letterSpacing: .5,
              ),
              textAlign: TextAlign.center,
              maxLines: 8,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget contactForm() {
    return Form(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          left: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
              ? width * .1
              : width * .05,
          right:
              Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                  ? width * .1
                  : width * .05,
          top: MediaQuery.of(context).size.height * .05,
          // bottom: MediaQuery.of(context).size.width * .1s,
        ),
        width: 100,
        child: Column(
          key: _formKey,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: Responsive.isDesktop(context) ||
                      Responsive.isk4Desktop(context)
                  ? width * .3
                  : width,
              child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  hintText: 'Name',
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            SizedBox(
              width: Responsive.isDesktop(context) ||
                      Responsive.isk4Desktop(context)
                  ? width * .3
                  : width,
              child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  hintText: 'Phone',
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            SizedBox(
              width: Responsive.isDesktop(context) ||
                      Responsive.isk4Desktop(context)
                  ? width * .3
                  : width,
              child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  hintText: 'Choose Service',
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            SizedBox(
              width: Responsive.isDesktop(context) ||
                      Responsive.isk4Desktop(context)
                  ? width * .3
                  : width,
              child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  hintText: 'Message',
                  filled: true,
                ),
                maxLines: 5,
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a Snackbar.
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith<Color>(
                    (Set<WidgetState> states) {
                  return Colors.green;
                }),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: Text('Get a Quote',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        letterSpacing: 1)),
              ),
            ),
            SizedBox(
              height: height * .02,
            )
          ],
        ),
      ),
    );
  }

  Widget helpdesk() {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          left: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
              ? width * .1
              : width * .05,
          right:
              Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
                  ? width * .1
                  : width * .05,
          top: MediaQuery.of(context).size.height * .05,
          bottom: MediaQuery.of(context).size.width * .01,
        ),
        width: 100,
        alignment: Alignment.center,
        // color: Color.fromRGBO(235, 235, 235, 1),
        child: Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("phone-image.png"),
                  SizedBox(
                    width: width * .02,
                  ),
                  SizedBox(
                    width: width * .28,
                    child: Text(
                      "Leverage and amplify your product value by cooperating with CodeElan Technologies. Collaborate with our innovative custom software development company!",
                      style: TextStyle(
                        color: Color.fromRGBO(79, 79, 103, 1),
                        fontFamily: 'Arial',
                        fontSize: Responsive.isDesktop(context) ||
                                Responsive.isk4Desktop(context)
                            ? 16
                            : 10,
                        letterSpacing: .5,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    width: width * .02,
                  ),
                  DottedDashedLine(
                    height: 40,
                    width: 0,
                    axis: Axis.vertical,
                    dashHeight: 8,
                    dashColor: Colors.orange,
                  ),
                  SizedBox(
                    width: width * .02,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Help Desk 24h/7",
                        style: TextStyle(
                          color: AppColor.green,
                          fontFamily: 'Arial',
                          fontSize: 16,
                          letterSpacing: .5,
                        ),
                      ),
                      Text(
                        "8484914105",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          fontSize: Responsive.isDesktop(context) ||
                                  Responsive.isk4Desktop(context)
                              ? 30
                              : 25,
                          letterSpacing: .5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * .2,
                  )
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset("phone-image.png"),
                      SizedBox(
                        width: width * .02,
                      ),
                      SizedBox(
                        width: width * .5,
                        child: Text(
                          "Leverage and amplify your product value by cooperating with CodeElan Technologies. Collaborate with our innovative custom software development company!",
                          style: TextStyle(
                            color: Color.fromRGBO(79, 79, 103, 1),
                            fontFamily: 'Arial',
                            fontSize: Responsive.isDesktop(context) ||
                                    Responsive.isk4Desktop(context)
                                ? 16
                                : 10,
                            letterSpacing: .5,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * .05,
                  ),
                  DottedDashedLine(
                    height: 20,
                    width: 200,
                    axis: Axis.horizontal,
                    dashHeight: 8,
                    dashColor: Colors.orange,
                  ),
                  SizedBox(
                    width: width * .02,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Help Desk 24h/7",
                        style: TextStyle(
                          color: AppColor.green,
                          fontFamily: 'Arial',
                          fontSize: 16,
                          letterSpacing: .5,
                        ),
                      ),
                      Text(
                        "8484914105",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          fontSize: Responsive.isDesktop(context) ||
                                  Responsive.isk4Desktop(context)
                              ? 30
                              : 25,
                          letterSpacing: .5,
                        ),
                      ),
                    ],
                  ),
                ],
              ));
  }

  Widget ExclusiveContainer(String title, String subTitle) {
    return Container(
      width:Responsive.isDesktop(context) || Responsive.isk4Desktop(context)
          ? width * .35
          : width,
      // height: height * .23,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      padding:
          const EdgeInsets.only(left: 30.0, right: 30, top: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 20,
                color: AppColor.primary,
                fontWeight: FontWeight.bold),
          ),
          Text(
            subTitle,
            style: TextStyle(fontSize: 16, color: AppColor.subHeadingColor),
          ),
        ],
      ),
    );
  }
}
