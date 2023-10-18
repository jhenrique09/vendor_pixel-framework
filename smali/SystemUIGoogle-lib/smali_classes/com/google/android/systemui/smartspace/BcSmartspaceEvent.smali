.class public final enum Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/google/android/systemui/smartspace/EventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

.field public static final enum SMARTSPACE_CARD_CLICK:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

.field public static final enum SMARTSPACE_CARD_RECEIVED:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

.field public static final enum SMARTSPACE_CARD_SEEN:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    const/4 v1, -0x1

    const-string v2, "IGNORE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    const/16 v2, 0x2f7

    const-string v3, "SMARTSPACE_CARD_RECEIVED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_RECEIVED:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    new-instance v2, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    const/16 v3, 0x2f8

    const-string v4, "SMARTSPACE_CARD_CLICK"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_CLICK:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    new-instance v3, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    const/16 v4, 0x2f9

    const-string v5, "SMARTSPACE_CARD_DISMISS"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    const/16 v5, 0x320

    const-string v6, "SMARTSPACE_CARD_SEEN"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_SEEN:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    new-instance v5, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    const/16 v6, 0x336

    const-string v7, "ENABLED_SMARTSPACE"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    const/16 v7, 0x337

    const-string v8, "DISABLED_SMARTSPACE"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;-><init>(Ljava/lang/String;II)V

    filled-new-array/range {v0 .. v6}, [Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->$VALUES:[Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;
    .locals 1

    const-class v0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->$VALUES:[Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-virtual {v0}, [Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->mId:I

    return p0
.end method
