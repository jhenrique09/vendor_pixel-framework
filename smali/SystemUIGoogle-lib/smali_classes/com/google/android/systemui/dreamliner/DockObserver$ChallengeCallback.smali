.class final Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/dreamliner/WirelessCharger$ChallengeCallback;


# instance fields
.field public final mResultReceiver:Landroid/os/ResultReceiver;

.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method
