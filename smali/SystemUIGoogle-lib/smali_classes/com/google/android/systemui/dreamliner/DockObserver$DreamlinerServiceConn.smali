.class final Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->-$$Nest$mstopDreamlinerService(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/google/android/systemui/dreamliner/DockObserver;->sIsDockingUiShowing:Z

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->isWirelessCharging(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    const-string v0, "onBindingDied, isWirelessCharging:"

    const-string v1, "DLObserver"

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->updateCurrentDockingStatus(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->-$$Nest$msendDockActiveIntent(Lcom/google/android/systemui/dreamliner/DockObserver;)V

    return-void
.end method
