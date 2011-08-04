<?php
// bases on the wordpress test case, adapted by Eugenio Fage
//Import the helper to be tested.
//If the tested helper were using some other helper, like Html,
//it should be impoorted in this line, and instantialized in startTest().
App::import('Helper', 'Shortcode');

class ShortcodeTest extends CakeTestCase {

    public $instance;

    public $atts = null;
    public $content = null;
    public $tagname = null;


    //Here we instantiate our helper, and all other helpers we need.
    public function startTest() {
        $this->instance=new Shortcode();
        $this->instance->add_shortcode('footag', array(&$this,'_footag_func'));
        $this->instance->add_shortcode('paragraph', array(&$this,'_paragraph_func'));
        $this->instance->add_shortcode('bartag', array(&$this,'_bartag_func'));
        $this->instance->add_shortcode('baztag', array(&$this,'_baztag_func'));
        $this->instance->add_shortcode('dumptag', array(&$this,'_dumptag_func'));

        $this->instance->add_shortcode('test-shortcode-tag', array(&$this, '_shortcode_tag'));
        #error_reporting(E_ALL);
        #ini_set('display_errors', '1');
        $this->atts = null;
        $this->content = null;
        $this->tagname = null;
    }

    function _shortcode_tag($atts, $content=NULL, $tagname=NULL) {
        $this->atts = $atts;
        $this->content = $content;
        $this->tagname = $tagname;
        
    }

    function testNoatts() {
        
        $this->instance->doShortcode('[test-shortcode-tag /]');
        $this->assertEqual('', $this->atts );
        $this->assertEqual( 'test-shortcode-tag', $this->tagname );

    }

    function assertEquals($expectation, $compare,$msg=null){
        return parent::assert($compare,$expectation,$msg);
    }

    function test_one_att() {
        $this->instance->doShortcode('[test-shortcode-tag foo="asdf" /]');
        $this->assertEqual( array('foo' => 'asdf'), $this->atts );
        $this->assertEqual( 'test-shortcode-tag', $this->tagname );
    }

    function test_not_a_tag() {
        $out = $this->instance->doShortcode('[not-a-shortcode-tag]');
        $this->assertEqual( '[not-a-shortcode-tag]', $out );
    }

    function test_two_atts() {
        $this->instance->doShortcode('[test-shortcode-tag foo="asdf" bar="bing" /]');
        $this->assertEqual( array('foo' => 'asdf', 'bar' => 'bing'), $this->atts );
        $this->assertEqual( 'test-shortcode-tag', $this->tagname );
    }

    function test_noatts_enclosing() {
        $this->instance->doShortcode('[test-shortcode-tag]content[/test-shortcode-tag]');
        $this->assertEqual( '', $this->atts );
        $this->assertEqual( 'content', $this->content );
        $this->assertEqual( 'test-shortcode-tag', $this->tagname );
    }

    function test_one_att_enclosing() {
        $this->instance->doShortcode('[test-shortcode-tag foo="bar"]content[/test-shortcode-tag]');
        $this->assertEqual( array('foo' => 'bar'), $this->atts );
        $this->assertEqual( 'content', $this->content );
        $this->assertEqual( 'test-shortcode-tag', $this->tagname );
    }

    function test_two_atts_enclosing() {
        $this->instance->doShortcode('[test-shortcode-tag foo="bar" baz="bing"]content[/test-shortcode-tag]');
        $this->assertEqual( array('foo' => 'bar', 'baz' => 'bing'), $this->atts );
        $this->assertEqual( 'content', $this->content );
        $this->assertEqual( 'test-shortcode-tag', $this->tagname );
    }

    function test_unclosed() {
        $out = $this->instance->doShortcode('[test-shortcode-tag]');
        $this->assertEqual( '', $out );
        $this->assertEqual( '', $this->atts );
        $this->assertEqual( 'test-shortcode-tag', $this->tagname );
    }

    function test_positional_atts_num() {
        $out = $this->instance->doShortcode('[test-shortcode-tag 123]');
        $this->assertEqual( '', $out );
        $this->assertEqual( array(0=>'123'), $this->atts );
        $this->assertEqual( 'test-shortcode-tag', $this->tagname );
    }

    function test_positional_atts_url() {
        $out = $this->instance->doShortcode('[test-shortcode-tag http://www.youtube.com/watch?v=eBGIQ7ZuuiU]');
        $this->assertEqual( '', $out );
        $this->assertEqual( array(0=>'http://www.youtube.com/watch?v=eBGIQ7ZuuiU'), $this->atts );
        $this->assertEqual( 'test-shortcode-tag', $this->tagname );
    }

    function test_positional_atts_quotes() {
        $out = $this->instance->doShortcode('[test-shortcode-tag "something in quotes" "something else"]');
        $this->assertEqual( '', $out );
        $this->assertEqual( array(0=>'something in quotes', 1=>'something else'), $this->atts );
        $this->assertEqual( 'test-shortcode-tag', $this->tagname );
    }

    function test_positional_atts_mixed() {
        $out = $this->instance->doShortcode('[test-shortcode-tag 123 http://wordpress.com/ 0 "foo" bar]');
        $this->assertEqual( '', $out );
        $this->assertEqual( array(0=>'123', 1=>'http://wordpress.com/', 2=>'0', 3=>'foo', 4=>'bar'), $this->atts );
        $this->assertEqual( 'test-shortcode-tag', $this->tagname );
    }

    function test_positional_and_named_atts() {
        $out = $this->instance->doShortcode('[test-shortcode-tag 123 url=http://wordpress.com/ foo bar="baz"]');
        $this->assertEqual( '', $out );
        $this->assertEqual( array(0=>'123', 'url' => 'http://wordpress.com/', 1=>'foo', 'bar' => 'baz'), $this->atts );
        $this->assertEqual( 'test-shortcode-tag', $this->tagname );
    }

    function test_footag_default() {
        $out = $this->instance->doShortcode('[footag]');
        $this->assertEqual('foo = ', $out);
    }

    function test_footag_val() {
        $val = rand(1*10000, 9*100000);
        $out = $this->instance->doShortcode('[footag foo="'.$val.'"]');
        $this->assertEqual('foo = '.$val, $out);
    }

    function test_nested_tags() {
        $out = $this->instance->doShortcode('[baztag][dumptag abc="foo" def=123 http://wordpress.com/][/baztag]');
        $expected = <<<EOF
content = abc = foo
def = 123
0 = http://wordpress.com

EOF;
        $this->assertEqual($expected, $out);
    }

    function test_tag_escaped() {

        $out = $this->instance->doShortcode('[[footag]] [[bartag foo="bar"]]');
        $this->assertEqual('[footag] [bartag foo="bar"]', $out);

        $out = $this->instance->doShortcode('[[footag /]] [[bartag foo="bar" /]]');
        $this->assertEqual('[footag /] [bartag foo="bar" /]', $out);

        $out = $this->instance->doShortcode('[[baztag foo="bar"]the content[/baztag]]');
        $this->assertEqual('[baztag foo="bar"]the content[/baztag]', $out);

        // double escaped
        $out = $this->instance->doShortcode('[[[footag]]] [[[bartag foo="bar"]]]');
        $this->assertEqual('[[footag]] [[bartag foo="bar"]]', $out);
    }

    function test_tag_not_escaped() {
        // these have square brackets on either end but aren't actually escaped
        $out = $this->instance->doShortcode('[[footag] [bartag foo="bar"]]');
        $this->assertEqual('[foo =  foo = bar]', $out);

        $out = $this->instance->doShortcode('[[footag /] [bartag foo="bar" /]]');
        $this->assertEqual('[foo =  foo = bar]', $out);

        $out = $this->instance->doShortcode('[[baztag foo="bar"]the content[/baztag]');
        $this->assertEqual('[content = the content', $out);

        $out = $this->instance->doShortcode('[[not-a-tag]]');
        $this->assertEqual('[[not-a-tag]]', $out);

        $out = $this->instance->doShortcode('[[[footag] [bartag foo="bar"]]]');
        $this->assertEqual('[[foo =  foo = bar]]', $out);
    }

    function test_mixed_tags() {
        $in = <<<EOF
So this is a post with [footag foo="some stuff"] and a bunch of tags.

[bartag]

[baztag]
Here's some content
on more than one line
[/baztag]

[bartag foo=1] [baztag] [footag foo="2"] [baztag]

[baztag]
more content
[/baztag]

EOF;
        $expected = <<<EOF
So this is a post with foo = some stuff and a bunch of tags.

foo = no foo

content = 
Here's some content
on more than one line


foo = 1 content =  foo = 2 content = 

content = 
more content
EOF;

        
        $out = trim($this->instance->doShortcode($in));
        $this->assertEqual(($expected), ($out));
    }

    /*
     enabled = the shortcode works as normal (default)
     strip = the shortcode will be parsed and removed.  e.g. '[shortcode foo="bar"]' produces ''.  '[shortcode]foo[/shortcode]' produces 'foo'.
     faux = the shortcode will be abbreviated.  e.g. '[shortcode foo="bar"]' products '[shortcode]'.  '[shortocde]foo[/shortcode]' produces '[shortcode]'
     disabled = the shortcode is not parsed at all.  e.g. '[shortcode foo="bar"]' products '[shortcode foo="bar"]'
     */

    function test_shortcodes_enabled() {
        if (is_callable(array(&$this,'set_all_shortcode_status')) ){
                
            $this->instance->set_all_shortcode_status('enabled');
            $out = $this->instance->doShortcode("[baztag]foo is [footag foo='bar'][/baztag]");
            $expected = 'content = foo is foo = bar';
            $this->assertEqual( $expected, $out );
        }
    }

    function test_shortcodes_disabled() {
        if (is_callable(array(&$this,'set_all_shortcode_status')) ){
                
            $this->instance->set_all_shortcode_status('disabled');
            $out = $this->instance->doShortcode("[baztag]foo is [footag foo='bar'][/baztag]");
            $expected = $out;
            $this->assertEqual( $expected, $out );
        }
    }

    function test_shortcodes_strip() {
        if (is_callable(array(&$this,'set_all_shortcode_status')) ){
                
            set_all_shortcode_status('strip');
            $out = $this->instance->doShortcode("[baztag]foo is [footag foo='bar'][/baztag]");
            $expected = 'foo is ';
            $this->assertEqual( $expected, $out );
        }
    }

    function test_shortcodes_faux() {
        if (is_callable(array(&$this,'set_all_shortcode_status')) ){
            $this->markTestSkipped();
            set_all_shortcode_status('faux');
            $out = $this->instance->doShortcode("[baztag]foo is [footag foo='bar'][/baztag]");
            $expected = '[baztag]';
            $this->assertEqual( $expected, $out );
        }
    }








    // [footag foo="bar"]
    function _footag_func($atts) {
        return @"foo = {$atts['foo']}";
    }

    // [bartag foo="bar"]
    function _bartag_func($atts) {
        extract($this->instance->shortcode_atts(array(
            'foo' => 'no foo',
            'baz' => 'default baz',
        ), $atts));

        return "foo = {$foo}";
    }

    // [baztag]content[/baztag]
    function _baztag_func($atts, $content='') {
        return 'content = '.$this->instance->doShortcode($content);
    }

    function _dumptag_func($atts) {
        $out = '';
        foreach ($atts as $k=>$v)
        $out .= "$k = $v\n";
        return $out;
    }


    // suggested by markj for testing p-wrapping of shortcode output
    function _paragraph_func($atts, $content='') {
        extract($this->instance->shortcode_atts(array(
    'class' => 'graf',
        ), $atts));
        return "<p class='$class'>$content</p>\n";
    }

} 