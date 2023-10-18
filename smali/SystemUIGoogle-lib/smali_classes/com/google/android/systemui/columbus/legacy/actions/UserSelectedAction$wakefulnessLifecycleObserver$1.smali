.class public final Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$wakefulnessLifecycleObserver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$wakefulnessLifecycleObserver$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$wakefulnessLifecycleObserver$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->updateAvailable()V

    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction$wakefulnessLifecycleObserver$1;->this$0:Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/actions/UserSelectedAction;->updateAvailable()V

    return-void
.end method
