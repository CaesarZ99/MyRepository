var url='/adminCtrl/yhgl';
var pageSize=5
function goto() {
    var pageNum = $("#go").val();
    console.log(pageNum);
    console.log(getStorage());
    console.log(getPageSize());
    window.location.href = getStorage()+'?pageNum=' + pageNum+'&pageSize='+getPageSize();
}

function startPage(pageNum) {

    window.location.href = getStorage()+'?pageNum=' + pageNum+'&pageSize='+getPageSize();
}

function prePage(pageNum) {
    window.location.href = getStorage()+'?pageNum=' + pageNum+'&pageSize='+getPageSize();
}

function nxPage(pageNum) {
    window.location.href = getStorage()+'?pageNum=' + pageNum+'&pageSize='+getPageSize();
}

function endPage(pageNum) {
    window.location.href = getStorage()+'?pageNum=' + pageNum+'&pageSize='+getPageSize();
}
//查询未冻结用户
function wdj() {
    var url1='/adminCtrl/unLocked';
    setStorage(url1);
    window.location.href=url1+'?pageSize='+getPageSize();
}
function ydj() {
    var url2='/adminCtrl/locked';
    setStorage(url2);
    window.location.href=url2+'?pageSize='+getPageSize();
}
function allUser() {
    var url3='/adminCtrl/yhgl';
    setStorage(url3);
    window.location.href=url3+'?pageSize='+getPageSize();
}

function setStorage(u){
    window.localStorage.setItem('url',u)
}
function getStorage(){
    return window.localStorage.getItem('url');
}
//每页显示条数
function selectPageSize (value){
    setPageSize(value);
    window.location.href=getStorage()+'?pageSize='+value;
}

function setPageSize(pageSize){
    window.localStorage.setItem('pageSize',pageSize)
}

function getPageSize(){
    return window.localStorage.getItem('pageSize');
}