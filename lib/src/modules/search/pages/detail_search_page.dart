import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/modules/search/logic/search_detail_bloc.dart';
import 'package:instagram/src/modules/search/widgets/search_card.dart';
import 'package:instagram/src/widgets/text_field/text_field_search.dart';

class DetailSearchPage extends StatelessWidget {
  const DetailSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SearchDetailBloc(),
        child: BlocBuilder<SearchDetailBloc, SearchDetailState>(
          builder: (context, state) {
            return Scaffold(
                appBar: AppBar(
                  title: SearchTextField(
                      value: state.username,
                      onEditingComplete: () =>
                          context.read<SearchDetailBloc>().onSubmitSearch(),
                      hint: 'Username',
                      onChanged: (value) => context
                          .read<SearchDetailBloc>()
                          .changeUsernam(value)),
                ),
                body: ListView.builder(
                  itemBuilder: (context, index) {
                    return SearchCard(
                      user: state.data[index],
                    );
                  },
                  itemCount: state.data.length,
                  shrinkWrap: true,
                ));
          },
        ));
  }
}