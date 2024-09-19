<!-- BEGIN: main -->
<div class="box-border-shadow m-bottom text-center">
    <table class="table table-striped table-bordered table-hover">
       <thead>
            <tr>
                <th>{LANG.keywordsms}</th>
                <th>{LANG.descriptionsms}</th>
                <th>{LANG.moneyinwallet}</th>
            </tr>
       </thead>
       <tbody>
            <!-- BEGIN: data_nap -->
            <tr>
                <td style="text-transform:uppercase">{DATA_NAP.keyword}</td>
                <td>{DATA_NAP.description}</td>
                <td>{DATA_NAP.value}</td>
            </tr>
            <!-- END: data_nap -->
       </tbody>
    </table>
    <div class="well">
        <strong>{LANG.smsexamp}</strong>
    </div>
    <table class="table table-striped table-bordered table-hover">
       <thead>
            <tr>
                <th>{LANG.nhamang}</th>
                <th>{LANG.cuphap}</th>
            </tr>
       </thead>
       <tbody>
            <tr>
                <td>{LANG.smsexamp_vinaphone}</td>
                <td>{SMS.vinaphone}</td>
            </tr>
            <tr>
                <td>{LANG.smsexamp_mobifone}</td>
                <td>{SMS.mobifone}</td>
            </tr>
            <tr>
                <td>{LANG.smsexamp_viettel}</td>
                <td>{SMS.viettel}</td>
            </tr>
       </tbody>
    </table>
    <div class="well text-left">
        <strong>{LANG.notesms}</strong>
        <p>
            <strong>{CONFIG_SMS.config.strucsms}</strong>: {LANG.cuphap}
        </p>
        <p>
            <strong>{EXAMP_SMS.keyword}</strong>: {LANG.menhgianap}
        </p>
        <p>
            <strong>{usercodesms}</strong>: {LANG.username}
        </p>
        <p>
            <strong>{CONFIG_SMS.config.portsms}</strong>: {LANG.smsport}
        </p>
    </div>
</div>
<!-- END: main -->