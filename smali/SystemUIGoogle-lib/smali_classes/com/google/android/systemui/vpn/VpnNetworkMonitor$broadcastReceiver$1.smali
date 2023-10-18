.class public final Lcom/google/android/systemui/vpn/VpnNetworkMonitor$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/vpn/VpnNetworkMonitor;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/vpn/VpnNetworkMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$broadcastReceiver$1;->this$0:Lcom/google/android/systemui/vpn/VpnNetworkMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.android.wildlife.action.UPDATE_NETWORK_MONITOR"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "com.google.android.wildlife.extra.UPDATE_NETWORK_MONITOR_STATUS"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$broadcastReceiver$1;->this$0:Lcom/google/android/systemui/vpn/VpnNetworkMonitor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setNetworkMonitorEnabled "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VpnNetworkMonitor"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->registerNetworkCallback()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->unregisterNetworkCallback()V

    :goto_0
    iget-object p2, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p2

    iget-object p0, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    check-cast p0, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string v0, "network_monitor_index"

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "network_monitor_enabled"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method
