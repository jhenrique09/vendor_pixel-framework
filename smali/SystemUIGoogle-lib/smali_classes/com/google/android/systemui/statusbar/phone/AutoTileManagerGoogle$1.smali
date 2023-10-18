.class public final Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReverseChanged(ILjava/lang/String;Z)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    const-string v0, "reverse"

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p2, v0}, Lcom/android/systemui/qs/QSHost;->addTile(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/AutoAddTracker;->setTileAdded(Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
