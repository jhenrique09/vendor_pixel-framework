.class public final synthetic Lcom/google/android/systemui/elmyra/actions/DeskClockAction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/elmyra/actions/DeskClockAction;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/elmyra/actions/DeskClockAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/actions/DeskClockAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/DeskClockAction$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/actions/DeskClockAction;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/DeskClockAction;->updateBroadcastReceiver()V

    return-void
.end method
