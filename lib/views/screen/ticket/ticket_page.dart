import 'package:flutter/material.dart';
import 'package:mybook/constant.dart';
import 'package:mybook/models/my_ticket.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    'My Ticket',
                    style: large.copyWith(
                        fontWeight: FontWeight.w800, fontSize: 23),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                height: 480,
                width: 400,
                child: ListView.builder(
                  
                  scrollDirection: Axis.vertical,
                  itemCount: myTicket.length,
                  itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Container(
                      height: 138,
                      width: 390,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.1)
                    
                      ),
                      child: Row(
                        
                        children: [
                          Image.asset(myTicket[index].img),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(myTicket[index].title, style: small.copyWith(fontWeight: FontWeight.bold),),
                                const SizedBox(height: 15,),
                                Row(
                                  children: [
                                    const Icon(Icons.timer_sharp, size: 18,),
                                    const SizedBox(width: 7,),
                                    Text(myTicket[index].date, style: small.copyWith(fontWeight: FontWeight.w100, fontSize: 12)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.location_on_outlined, size: 18,),
                                    const SizedBox(width: 7,),
                                    Text(myTicket[index].location, style: small.copyWith(fontWeight: FontWeight.w100, fontSize: 12),),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                  
                })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
