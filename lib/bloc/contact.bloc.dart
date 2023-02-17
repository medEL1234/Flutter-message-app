import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:message_app_test/model/contact.dart';

abstract class ContactsEvent {}

class LoadAllContactsEvent extends ContactsEvent {}

class LoadStudentEvent extends ContactsEvent {}

class LoadDeveLopersEvent extends ContactsEvent {}

// build a enum for see statue of request

enum RequStatu { LOADING, LOADED, ERROR, NONE }

//build a class for display stat of contact
class ContactsStat {
  List<Contact>? contacts;
  RequStatu? requStatu;
  String? errorMessage;

  ContactsStat({this.contacts, this.errorMessage, this.requStatu});
}

//build bloc 

class ContactsBloc extends Bloc<ContactsEvent,ContactsStat>{
  ContactsRepository contactsRepository;
  ContactsBloc(ContactsStat initialState , this.contactsRepository ) : super(initialState)

  
 
 Stream<ContactsStat>  mapEventToState(ContactsEvent event) async*  {
    if(event is LoadAllContactsEvent){
      yield ContactsStat(contacts: state.contacts,requStatu:RequStatu.LOADING);

    }else if(event is LoadStudentEvent){

    }else if(event is LoadDeveLopersEvent){

    }
  }

}