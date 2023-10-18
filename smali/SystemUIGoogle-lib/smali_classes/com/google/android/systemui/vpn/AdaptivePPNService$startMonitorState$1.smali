.class public final Lcom/google/android/systemui/vpn/AdaptivePPNService$startMonitorState$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/vpn/AdaptivePPNService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/vpn/AdaptivePPNService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/vpn/AdaptivePPNService$startMonitorState$1;->this$0:Lcom/google/android/systemui/vpn/AdaptivePPNService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const-string v0, "AdaptivePPNService"

    const-string v1, "start monitors"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/systemui/vpn/AdaptivePPNService$startMonitorState$1;->this$0:Lcom/google/android/systemui/vpn/AdaptivePPNService;

    iget-object v1, v0, Lcom/google/android/systemui/vpn/AdaptivePPNService;->vpnNetworkMonitorWrapper:Ldagger/Lazy;

    check-cast v1, Ldagger/internal/DoubleCheck;

    invoke-virtual {v1}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;

    iput-object v1, v0, Lcom/google/android/systemui/vpn/AdaptivePPNService;->vpnNetworkMonitor:Lcom/google/android/systemui/vpn/VpnNetworkMonitor;

    iget-object v0, p0, Lcom/google/android/systemui/vpn/AdaptivePPNService$startMonitorState$1;->this$0:Lcom/google/android/systemui/vpn/AdaptivePPNService;

    iget-object v1, v0, Lcom/google/android/systemui/vpn/AdaptivePPNService;->vpnPackageMonitorWrapper:Ldagger/Lazy;

    check-cast v1, Ldagger/internal/DoubleCheck;

    invoke-virtual {v1}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/vpn/VpnPackageMonitor;

    iput-object v1, v0, Lcom/google/android/systemui/vpn/AdaptivePPNService;->vpnPackageMonitor:Lcom/google/android/systemui/vpn/VpnPackageMonitor;

    iget-object v0, p0, Lcom/google/android/systemui/vpn/AdaptivePPNService$startMonitorState$1;->this$0:Lcom/google/android/systemui/vpn/AdaptivePPNService;

    iget-object v1, v0, Lcom/google/android/systemui/vpn/AdaptivePPNService;->vpnNetworkMonitor:Lcom/google/android/systemui/vpn/VpnNetworkMonitor;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    iget-object v3, v1, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->userTrackerCallback:Lcom/google/android/systemui/vpn/VpnNetworkMonitor$userTrackerCallback$1;

    iget-object v4, v1, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4, v3}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    invoke-virtual {v1}, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->unregisterNetworkCallback()V

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v5, v1, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v6, v1, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->broadcastReceiver:Lcom/google/android/systemui/vpn/VpnNetworkMonitor$broadcastReceiver$1;

    iget-object v7, v5, Lcom/android/systemui/broadcast/BroadcastDispatcher;->removalPendingStore:Lcom/android/systemui/broadcast/PendingRemovalStore;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    iget-object v9, v7, Lcom/android/systemui/broadcast/PendingRemovalStore;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    invoke-virtual {v9, v8, v6}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logTagForRemoval(ILandroid/content/BroadcastReceiver;)V

    iget-object v9, v7, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    monitor-enter v9

    :try_start_0
    iget-object v7, v7, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v9

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v5, v5, Lcom/android/systemui/broadcast/BroadcastDispatcher;->handler:Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v3, v8, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    iget-object v3, v1, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    iget-object v1, v1, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    check-cast v1, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string v5, "network_monitor_index"

    invoke-virtual {v1, v5, v3}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "network_monitor_enabled"

    const/4 v5, 0x1

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "NetworkMonitor - destroy, enabled is "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VpnNetworkMonitor"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/google/android/systemui/vpn/AdaptivePPNService;->vpnPackageMonitor:Lcom/google/android/systemui/vpn/VpnPackageMonitor;

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v4}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v6, v0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v9, v0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->wildlifeFeatureBroadcastReceiver:Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;

    iget-object v10, v6, Lcom/android/systemui/broadcast/BroadcastDispatcher;->removalPendingStore:Lcom/android/systemui/broadcast/PendingRemovalStore;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    iget-object v12, v10, Lcom/android/systemui/broadcast/PendingRemovalStore;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    invoke-virtual {v12, v11, v9}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logTagForRemoval(ILandroid/content/BroadcastReceiver;)V

    iget-object v12, v10, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    monitor-enter v12

    :try_start_1
    iget-object v10, v10, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    invoke-virtual {v10, v11, v9}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v12

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iget-object v6, v6, Lcom/android/systemui/broadcast/BroadcastDispatcher;->handler:Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;

    invoke-virtual {v6, v7, v1, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-boolean v1, v0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->isRegistered:Z

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->context:Landroid/content/Context;

    iget-object v6, v0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->packageMonitorBroadcastReceiver:Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;

    invoke-virtual {v1, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v8, v0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->isRegistered:Z

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/vpn/AdaptivePPNService$startMonitorState$1;->this$0:Lcom/google/android/systemui/vpn/AdaptivePPNService;

    iget-object v0, p0, Lcom/google/android/systemui/vpn/AdaptivePPNService;->vpnNetworkMonitor:Lcom/google/android/systemui/vpn/VpnNetworkMonitor;

    if-nez v0, :cond_3

    move-object v0, v2

    :cond_3
    iget-object v6, v0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v7, v0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->broadcastReceiver:Lcom/google/android/systemui/vpn/VpnNetworkMonitor$broadcastReceiver$1;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.wildlife.action.UPDATE_NETWORK_MONITOR"

    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->uiExecutor:Ljava/util/concurrent/Executor;

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v4}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v11, 0x2

    const-string v12, "com.google.android.wildlife.permission.UPDATE_NETWORK_MONITOR"

    invoke-virtual/range {v6 .. v12}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    iget-object v6, v0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    check-cast v6, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string v7, "network_monitor_index"

    invoke-virtual {v6, v7, v1}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v6, "network_monitor_enabled"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "NetworkMonitor - create, enabled is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->registerNetworkCallback()V

    :cond_4
    iget-object v1, v0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    iget-object v3, v0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->userTrackerCallback:Lcom/google/android/systemui/vpn/VpnNetworkMonitor$userTrackerCallback$1;

    iget-object v0, v0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->uiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object p0, p0, Lcom/google/android/systemui/vpn/AdaptivePPNService;->vpnPackageMonitor:Lcom/google/android/systemui/vpn/VpnPackageMonitor;

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, p0

    :goto_1
    iget-object v6, v2, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v7, v2, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->wildlifeFeatureBroadcastReceiver:Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;

    new-instance v8, Landroid/content/IntentFilter;

    const-string p0, "com.google.android.wildlife.action.UPDATE_PACKAGE_MONITOR"

    invoke-direct {v8, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v4}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v11, 0x2

    const-string v12, "com.google.android.wildlife.permission.UPDATE_PACKAGE_MONITOR"

    invoke-virtual/range {v6 .. v12}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    iget-object p0, v2, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    iget-object v0, v2, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    check-cast v0, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string v1, "package_monitor_index"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "package_monitor_enabled"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isPackageMonitorEnabled is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VpnPackageMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_6

    invoke-virtual {v2}, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->registerPackageMonitorReceiver()V

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v12

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v9

    throw p0
.end method
