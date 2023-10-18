.class public final Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/elmyra/gates/Gate$Listener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup$1;->this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGateChanged(Lcom/google/android/systemui/elmyra/gates/Gate;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup$1;->this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardDeferredSetup;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    return-void
.end method
