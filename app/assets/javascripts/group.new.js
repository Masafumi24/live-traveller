$(function () {
  $('.userSelect').select2({
      width: '200px',
      placeholder: 'Please Select',
      multiple: true
  }).on('select2:opening select2:closing', function () {
      // select2関数を開いたり閉じたりするときに検索ボックスを非表示にします。
      var $searchfield = $(this).parent().find('.select2-search__field');
      $searchfield.prop('disabled', true);
  });
});