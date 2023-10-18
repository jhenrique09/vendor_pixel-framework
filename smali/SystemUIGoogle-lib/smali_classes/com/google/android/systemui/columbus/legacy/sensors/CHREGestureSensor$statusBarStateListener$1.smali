.class public final Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$statusBarStateListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$statusBarStateListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDozingChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor$statusBarStateListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;->isDozing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;->isDozing:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/sensors/CHREGestureSensor;->updateScreenState()V

    :cond_0
    return-void
.end method
