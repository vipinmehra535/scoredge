import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF23a296),
        title: const Text(
          "Health",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Image.asset(
            'assets/image/score_edge.png',
            fit: BoxFit.fill,
            width: 400.w,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              iconSize: 50.sp,
              icon: Icon(Icons.close_rounded),
              color: Colors.red)
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100.h,
          ),
          Container(
            height: 350.h,
            width: double.infinity,
            color: Color.fromARGB(255, 149, 231, 223),
            child: Stack(children: [
              Padding(
                padding: EdgeInsets.all(8.sp),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/image/score_edge.png',
                      height: 100.h,
                      width: 300.w,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "UserName",
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFF23a296), width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 1.w),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF23a296), width: 1.w),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF23a296),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        height: 40.h,
                        width: 350.w,
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
