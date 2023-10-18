.class public final synthetic Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/app/smartspace/SmartspaceAction;

    sget p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell;->$r8$clinit:I

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "imageUri"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    return p0

    :goto_0
    check-cast p1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardDoorbell$DrawableWithUri;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
