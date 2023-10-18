.class public final synthetic Lcom/google/android/systemui/elmyra/ElmyraService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/systemui/elmyra/ElmyraService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/elmyra/ElmyraService;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/elmyra/ElmyraService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    check-cast p1, Lcom/google/android/systemui/elmyra/actions/Action;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mActionListener:Lcom/google/android/systemui/elmyra/ElmyraService$1;

    iput-object p0, p1, Lcom/google/android/systemui/elmyra/actions/Action;->mListener:Lcom/google/android/systemui/elmyra/ElmyraService$1;

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    check-cast p1, Lcom/google/android/systemui/elmyra/gates/Gate;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGateListener:Lcom/google/android/systemui/elmyra/ElmyraService$1;

    iput-object p0, p1, Lcom/google/android/systemui/elmyra/gates/Gate;->mListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
