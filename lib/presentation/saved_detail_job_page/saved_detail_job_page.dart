import 'bloc/saved_detail_job_bloc.dart';import 'models/saved_detail_job_model.dart';import 'package:flutter/material.dart';import 'package:ollexx_hired/core/app_export.dart';import 'package:ollexx_hired/widgets/custom_elevated_button.dart';class SavedDetailJobPage extends StatefulWidget {const SavedDetailJobPage({Key? key}) : super(key: key);

@override SavedDetailJobPageState createState() =>  SavedDetailJobPageState();
static Widget builder(BuildContext context) { return BlocProvider<SavedDetailJobBloc>(create: (context) => SavedDetailJobBloc(SavedDetailJobState(savedDetailJobModelObj: SavedDetailJobModel()))..add(SavedDetailJobInitialEvent()), child: SavedDetailJobPage()); } 
 }
class SavedDetailJobPageState extends State<SavedDetailJobPage> with  AutomaticKeepAliveClientMixin<SavedDetailJobPage> {@override bool get wantKeepAlive =>  true;
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<SavedDetailJobBloc, SavedDetailJobState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA70001, body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: Padding(padding: getPadding(top: 449), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(top: 20), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(left: 24), child: Text("lbl_job_description".tr, style: CustomTextStyles.titleMediumBluegray900)), Align(alignment: Alignment.center, child: Container(width: getHorizontalSize(319), margin: getMargin(left: 31, top: 13, right: 24), child: Text("msg_lorem_ipsum_dolor3".tr, maxLines: 10, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallGray600.copyWith(height: 1.57)))), Container(margin: getMargin(bottom: 3), padding: getPadding(left: 24, top: 28, right: 24, bottom: 28), decoration: AppDecoration.gradientGrayToGray, child: CustomElevatedButton(text: "lbl_apply_now".tr, margin: getMargin(bottom: 12), buttonStyle: CustomButtonStyles.fillPrimary, onTap: () {onTapApplynow(context);}))]))]))))));}); } 
/// Navigates to the applyJobScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the applyJobScreen.
onTapApplynow(BuildContext context) { NavigatorService.pushNamed(AppRoutes.applyJobScreen, ); } 
 }
