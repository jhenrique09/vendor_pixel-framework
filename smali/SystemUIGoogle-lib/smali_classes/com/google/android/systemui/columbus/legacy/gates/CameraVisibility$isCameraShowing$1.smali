.class final Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source ""


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.legacy.gates.CameraVisibility"
    f = "CameraVisibility.kt"
    l = {
        0x66,
        0x66
    }
    m = "isCameraShowing"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;->label:I

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility$isCameraShowing$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;

    invoke-static {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;->access$isCameraShowing(Lcom/google/android/systemui/columbus/legacy/gates/CameraVisibility;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
