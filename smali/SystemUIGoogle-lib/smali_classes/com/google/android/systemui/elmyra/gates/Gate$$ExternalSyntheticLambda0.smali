.class public final synthetic Lcom/google/android/systemui/elmyra/gates/Gate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/elmyra/gates/Gate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/elmyra/gates/Gate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/Gate$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/gates/Gate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/Gate$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/gates/Gate;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/systemui/elmyra/gates/Gate$Listener;->onGateChanged(Lcom/google/android/systemui/elmyra/gates/Gate;)V

    :cond_0
    return-void
.end method
