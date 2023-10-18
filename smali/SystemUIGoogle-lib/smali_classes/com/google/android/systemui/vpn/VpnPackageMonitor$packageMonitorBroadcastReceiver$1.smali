.class public final Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/google/android/systemui/vpn/VpnPackageMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/vpn/VpnPackageMonitor;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;->this$0:Lcom/google/android/systemui/vpn/VpnPackageMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget p1, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;->$r8$classId:I

    const-string v0, "VpnPackageMonitor"

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;->this$0:Lcom/google/android/systemui/vpn/VpnPackageMonitor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p2, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->DEBUG:Z

    if-eqz p2, :cond_2

    const-string p2, "notifyPackageAdded"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.google.android.settings.action.NOTIFY_PACKAGE_ADDED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "com.google.android.wildlife.extra.NEW_PACKAGE_NAME"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.google.android.wildlife.permission.VPN_APP_EXCLUSION_LAUNCH"

    iget-object p0, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.google.android.wildlife.action.UPDATE_PACKAGE_MONITOR"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "com.google.android.wildlife.extra.UPDATE_PACKAGE_MONITOR_STATUS"

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;->this$0:Lcom/google/android/systemui/vpn/VpnPackageMonitor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "setPackageMonitorEnabled "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->registerPackageMonitorReceiver()V

    goto :goto_2

    :cond_4
    iget-boolean p2, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->isRegistered:Z

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->packageMonitorBroadcastReceiver:Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;

    invoke-virtual {p2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->isRegistered:Z

    :goto_2
    iget-object p2, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p2

    iget-object p0, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    check-cast p0, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string v0, "package_monitor_index"

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "package_monitor_enabled"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
