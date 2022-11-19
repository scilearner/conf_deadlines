# Conference Deadlines 

Countdown timers to keep track of a bunch of CV/NLP/ML/RO conference deadlines.

试图结合 [ai-deadlines](https://github.com/paperswithcode/ai-deadlines) 与 [ccf-deadlines](https://github.com/ccfddl/ccf-deadlines)

CCF China Computer Federation (CCF) 中国计算机协会推荐学术会议

## 运行

windows下 我用git bash没成功， 用 command prompt

```
bundle exec jekyll serve
```

## 安装包

需要 ruby + gem + bundler + jekyll

ruby 和 gem  https://rubyinstaller.org/downloads/ , version Ruby+Devkit 3.1.2-1 (x64) , 安装路径好像不能更改

bundler + jekyll 见 https://jekyllrb.com/ `gem install bundler jekyll`
 

## 代码改动

以 ai-deadlines的代码为基础， 因为我不认识ccf-deadlines用的技术，是 vue.js?

1. 在`.yml`文件里 加入 CCF 等级属性，在`_data/types.html`里添加 AI人工智能 类别
2. ai-deadlines 只使用一个 `_data/conferences.yml`, 过于臃肿， 学ccf-deadlines拆分成每个会议各占一个文件， 但需要用 merge.sh 合并——因为我也不会写ruby.

好像是调用了 `utils/process.py`, 但不确定

## Contributing

To add or update a deadline:
- Fork the repository
- Update 更新 或 添加 对应文件夹下的 name.yml
- Make sure it has the `title`, `year`, `id`, `link`, `deadline`, `timezone`, `date`, `place`, `sub`, `ccf` attributes
    + See available timezone strings [here](https://momentjs.com/timezone/).
- Optionally add a `note` and `abstract_deadline` in case the conference has a separate mandatory abstract deadline
- Optionally add `hindex` (refers to h5-index from [here](https://scholar.google.com/citations?view_op=top_venues&vq=eng))
- Example:
    ```yaml
    - title: BestConf
      year: 2022
      id: bestconf22  # title as lower case + last two digits of year
      ccf: A
      full_name: Best Conference for Anything  # full conference name
      link: link-to-website.com
      deadline: YYYY-MM-DD HH:SS
      abstract_deadline: YYYY-MM-DD HH:SS
      timezone: Asia/Seoul
      place: Incheon, South Korea
      date: September, 18-22, 2022
      start: YYYY-MM-DD
      end: YYYY-MM-DD
      paperslink: link-to-full-paper-list.com
      pwclink: link-to-papers-with-code.com
      hindex: 100.0
      sub: [SP,CV,AI]
      note: Important
    ```
- Send a pull request

## Forks & other useful listings

- [geodeadlin.es][3] by @LukasMosser
- [neuro-deadlines][4] by @tbryn
- [ai-challenge-deadlines][5] by @dieg0as
- [CV-oriented ai-deadlines (with an emphasis on medical images)][8] by @duducheng
- [es-deadlines (Embedded Systems, Computer Architecture, and Cyber-physical Systems)][9] by @AlexVonB and @k0nze
- [2019-2020 International Conferences in AI, CV, DM, NLP and Robotics][10] by @JackieTseng
- [ccf-deadlines][11] by @ccfddl
- [netdeadlines.com][12] by @albertgranalcoz
- [ad-deadlines.com][13] by @daniel-bogdoll
- [sec-deadlines.github.io/ (Security and Privacy)][14] by @clementfung
- [pythondeadlin.es][15] by @jesperdramsch

## License

This project is licensed under [MIT][1].

It uses:

- [IcoMoon Icons](https://icomoon.io/#icons-icomoon): [GPL](http://www.gnu.org/licenses/gpl.html) / [CC BY4.0](http://creativecommons.org/licenses/by/4.0/)

[1]: https://abhshkdz.mit-license.org/
[2]: http://aideadlin.es/
[3]: https://github.com/LukasMosser/geo-deadlines
[4]: https://github.com/tbryn/neuro-deadlines
[5]: https://github.com/dieg0as/ai-challenge-deadlines
[6]: http://www.conferenceranks.com/#
[8]: https://m3dv.github.io/ai-deadlines/
[9]: https://ekut-es.github.io/es-deadlines/
[10]: https://jackietseng.github.io/conference_call_for_paper/conferences.html
[11]: https://ccfddl.github.io/
[12]: https://netdeadlines.com/
[13]: https://ad-deadlines.com/
[14]: https://sec-deadlines.github.io/
[15]: https://pythondeadlin.es/
