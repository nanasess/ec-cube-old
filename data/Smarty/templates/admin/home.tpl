<!--{*
/*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2012 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */
*}-->

<div id="home">

    <!--{* お知らせここから *}-->
    <div id="home-info">
		<div class="banner">
		<p><a href="http://en.ec-cube.net/forum/" target="_blank"><img src="<!--{$TPL_URLPATH}-->img/banner/bnr_user_forums.jpg" /></a></p></div>
        <!--{foreach item=info from=$arrInfo}-->
            <dl class="home-info-item">
                <dt class="date"><!--{$info.disp_date|sfDispDBDate:false|h}--></dt>
                <dt class="title"><!--{$info.title}--></dt>
                <dd class="body"><!--{$info.body}--></dd>
            </dl>
        <!--{/foreach}-->
    </div>
    <!--{* お知らせここまで *}-->

    <!--{* メインエリア *}-->
    <div id="home-main">
        <form name="form1" method="post" action="#">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />

        <!--{* システム情報ここから *}-->
        <h2><!--{t string="tpl_682"}--></h2>
        <table summary="System information" class="shop-info">
            <tr>
                <th><!--{t string="tpl_525"}--></th>
                <td><!--{$smarty.const.ECCUBE_VERSION}--></td>
            </tr>
            <tr>
                <th><!--{t string="tpl_526"}--></th>
                <td><!--{$php_version}--></td>
            </tr>
            <tr>
                <th><!--{t string="tpl_527"}--></th>
                <td><!--{$db_version}--></td>
            </tr>
            <tr>
                <th><!--{t string="tpl_449"}--></th>
                <td><a href="<!--{$smarty.const.ROOT_URLPATH}--><!--{$smarty.const.ADMIN_DIR}-->system/system.php"><!--{t string="tpl_524"}--></a></td>
            </tr>
        </table>
        <!--{* システム情報ここまで *}-->

        <!--{* ショップの状況ここから *}-->
        <h2><!--{t string="tpl_528"}--></h2>
        <table summary="Shop status" class="shop-info">
            <tr>
                <th><!--{t string="tpl_529"}--></th>
                <td><!--{t string="tpl_725" %s1=$customer_cnt|default:"0"|number_format}--></td>
            </tr>
            <tr>
                <th><!--{t string="tpl_530"}--></th>
                <td><!--{t string="tpl_500" escape="none" %s1=$order_yesterday_amount|default:"0"|number_format}--></td>
            </tr>
            <tr>
                <th><!--{t string="tpl_531"}--></th>
                <td><!--{t string="tpl_701" %s1=$order_yesterday_cnt|default:"0"|number_format}--></td>
            </tr>
            <tr>
                <th><!--{t string="tpl_532" escape="none"}--></th>
                <td><!--{t string="tpl_500" escape="none" %s1=$order_month_amount|default:"0"|number_format}--></td>
            </tr>
            <tr>
                <th><!--{t string="tpl_533" escape="none"}--></th>
                <td><!--{t string="tpl_701" %s1=$order_month_cnt|default:"0"|number_format}--></td>
            </tr>
            <tr>
                <th><!--{t string="tpl_534"}--></th>
                <td><!--{t string="tpl_701" %s1=$review_yesterday_cnt|default:"0"}--></th>
            </tr>
            <tr>
                <th><!--{t string="tpl_535"}--></th>
                <td><!--{t string="pt_prefix"}--><!--{$customer_point|default:"0"}--><!--{t string="pt_suffix"}--></td>
            </tr>
            <tr>
                <th><!--{t string="tpl_536"}--></th>
                <td><!--{t string="tpl_701" %s1=$review_nondisp_cnt|default:"0"}--></td>
            </tr>
            <tr>
                <th><!--{t string="tpl_537"}--></th>
                <td>
                <!--{section name=i loop=$arrSoldout}-->
                <!--{$arrSoldout[i].product_id}-->:<!--{$arrSoldout[i].name|h}--><br />
                <!--{/section}-->
                </td>
            </tr>
        </table>
        <!--{* ショップの状況ここまで *}-->

        <!--{* 新規受付一覧ここから *}-->
        <h2><!--{t string="tpl_538"}--></h2>
        <table summary="List of new orders received" id="home-order">
            <tr>
                <th class="center"><!--{t string="tpl_Date of order receipt_01"}--></th>
                <th class="center"><!--{t string="tpl_Name_02"}--></th>
                <th class="center"><!--{t string="tpl_Purchased product_01"}--></th>
                <th class="center"><!--{t string="tpl_Payment method_01"}--></th>
                <th class="center"><!--{t string="tpl_Purchase amount (&#36;)_01" escape="none"}--></th>
            </tr>
            <!--{section name=i loop=$arrNewOrder}-->
            <tr>
                <td><!--{$arrNewOrder[i].create_date}--></td>
                <td><!--{$arrNewOrder[i].name01|h}--> <!--{$arrNewOrder[i].name02|h}--></td>
                <td><!--{$arrNewOrder[i].product_name|h}--></td>
                <td><!--{$arrNewOrder[i].payment_method|h}--></td>
                <td class="right"><!--{t string="tpl_500" escape="none" %s1=$arrNewOrder[i].total|number_format}--></td>
            </tr>
            <!--{/section}-->
        </table>
        <!--{* 新規受付一覧ここまで *}-->

        </form>
    </div>
    <!--{* メインエリア *}-->

</div>
