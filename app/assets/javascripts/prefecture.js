
$(document).ready(function() {
    //地域を選択
    $('.area_btn').click(function(){
        $('.area_overlay').show();
        $('.pref_area').show();
        var area = $(this).data('area');
        $('[data-list]').hide();
        $('[data-list="' + area + '"]').show();
    });

    //レイヤーをタップ
    $('.area_overlay').click(function(){
        prefReset();
    });

    //都道府県をクリック
    $('.pref_list [data-id]').click(function(){
        console.log($(this).data('id'))
        if($(this).data('id')){
            var id = $(this).data('id');
            console.log(id)
            //このidを使用して行いたい操作をしてください
            //都道府県IDに応じて別ページに飛ばしたい場合はこんな風に書く↓
            window.location.href = '/lines?p=' + id;

            prefReset();
        }
    });

    //表示リセット
    function prefReset(){
        $('[data-list]').hide();
        $('.pref_area').hide();
        $('.area_overlay').hide();
    }
});
