
import 'package:flutter/material.dart';
import 'package:startup_namer/boss/evy.com/item/joblist_item.dart';
import 'package:startup_namer/boss/evy.com/models/job.dart';

class JobsTab extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new JobList();
  }
}

class JobList  extends State<JobsTab>{

  List<Job> _jobs = [];

  @override
  void initState() {
    super.initState();
    getJobList();
  }

  Widget buildJobItem(BuildContext context, int index) {
    Job _job = _jobs[index];

    var jobItem = new InkWell(
      onTap: (){
        showDialog(context: context, child: new AlertDialog(
          content: new Text("敬请期待",
            style: new TextStyle(
              fontSize: 20.0
            ),
          ),
        ));
      },
      child: new JobListItem(_job),
    );/// 点击

    return jobItem;
  }

  void getJobList() {
    setState(() {
      _jobs = Job.fromJson("""
          {
            "list": [
              {
                "name": "架构师（Android）",
                "cname": "蚂蚁金服",
                "size": "B轮",
                "salary": "25k-45k",
                "username": "Claire",
                "title": "HR"
              },
              {
                "name": "资深Android架构师",
                "cname": "今日头条",
                "size": "D轮",
                "salary": "40k-60k",
                "username": "Kimi",
                "title": "HRBP"
              },
              {
                "name": "架构师（Android）",
                "cname": "蚂蚁金服",
                "size": "B轮",
                "salary": "25k-45k",
                "username": "Claire",
                "title": "HR"
              },
              {
                "name": "资深Android架构师",
                "cname": "今日头条",
                "size": "D轮",
                "salary": "40k-60k",
                "username": "Kimi",
                "title": "HRBP"
              },
              {
                "name": "架构师（Android）",
                "cname": "蚂蚁金服",
                "size": "B轮",
                "salary": "25k-45k",
                "username": "Claire",
                "title": "HR"
              },
              {
                "name": "资深Android架构师",
                "cname": "今日头条",
                "size": "D轮",
                "salary": "40k-60k",
                "username": "Kimi",
                "title": "HRBP"
           }
            ]
          }
      """);
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: new Color.fromARGB(255, 242, 242, 245),
      appBar: new AppBar(
        elevation: 0.0,
        title: new Text(
          "Android",
          style: new TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
      body: new ListView.builder(
        itemBuilder: buildJobItem,
        itemCount: _jobs.length,
      ),
    );
  }
}