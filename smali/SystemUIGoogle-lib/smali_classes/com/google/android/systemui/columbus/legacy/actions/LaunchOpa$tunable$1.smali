.class public final Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa$tunable$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa$tunable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "assist_gesture_any_assistant"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa$tunable$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;->enableForAnyAssistant:Z

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/LaunchOpa;->assistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/assist/AssistManagerGoogle;->mOpaEnabledReceiver:Lcom/google/android/systemui/assist/OpaEnabledReceiver;

    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/OpaEnabledReceiver;->dispatchOpaEnabledState(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
