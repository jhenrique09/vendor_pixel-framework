.class public final Lcom/google/android/systemui/vpn/AdaptivePPNService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final isVpnFeatureEnabled:Z

.field public final uiExecutor:Ljava/util/concurrent/Executor;

.field public vpnNetworkMonitor:Lcom/google/android/systemui/vpn/VpnNetworkMonitor;

.field public final vpnNetworkMonitorWrapper:Ldagger/Lazy;

.field public vpnPackageMonitor:Lcom/google/android/systemui/vpn/VpnPackageMonitor;

.field public final vpnPackageMonitorWrapper:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/util/concurrent/Executor;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/vpn/AdaptivePPNService;->uiExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/systemui/vpn/AdaptivePPNService;->vpnNetworkMonitorWrapper:Ldagger/Lazy;

    iput-object p4, p0, Lcom/google/android/systemui/vpn/AdaptivePPNService;->vpnPackageMonitorWrapper:Ldagger/Lazy;

    const p2, 0x7f05002f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/systemui/vpn/AdaptivePPNService;->isVpnFeatureEnabled:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Wildlife feature enabled is "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdaptivePPNService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/vpn/AdaptivePPNService;->isVpnFeatureEnabled:Z

    if-nez v0, :cond_0

    const-string p0, "AdaptivePPNService"

    const-string v0, "System config is off"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/systemui/vpn/AdaptivePPNService$startMonitorState$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/vpn/AdaptivePPNService$startMonitorState$1;-><init>(Lcom/google/android/systemui/vpn/AdaptivePPNService;)V

    iget-object p0, p0, Lcom/google/android/systemui/vpn/AdaptivePPNService;->uiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
