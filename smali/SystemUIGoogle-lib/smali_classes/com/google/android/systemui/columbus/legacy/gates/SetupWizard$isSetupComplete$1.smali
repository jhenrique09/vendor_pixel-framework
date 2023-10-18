.class final Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source ""


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.legacy.gates.SetupWizard"
    f = "SetupWizard.kt"
    l = {
        0x50,
        0x50
    }
    m = "isSetupComplete"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;->label:I

    iget-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard$isSetupComplete$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;

    invoke-static {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;->access$isSetupComplete(Lcom/google/android/systemui/columbus/legacy/gates/SetupWizard;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
