<template>
    <v-container>
        <v-layout
            text-center
            wrap
        >
            <v-card 
                class="mx-auto"
                max-width="300"
                tile>
                <v-list shaped>
                    <v-subheader>Receipts</v-subheader>
                    <v-list-item-group color="primary">
                        <v-list-item
                            v-for="receipt in receipts"
                            :key="receipt.receiptId">
                            <v-list-item-avatar>
                                {{ receipt.purchaseDate }}
                            </v-list-item-avatar>
                            <v-list-item-content>
                                <v-list-item-title>{{ receipt.storeName }}</v-list-item-title>
                                <v-list-item-subtitle> {{ receipt.receiptId }} </v-list-item-subtitle>
                            </v-list-item-content>
                        </v-list-item>
                    </v-list-item-group>
                </v-list>
            </v-card>
        </v-layout>
    </v-container>
</template>
<script>
export default {
    data() {
        return {
            receipts: [
                {
                    receiptId: '1',
                    storeName: "Meny Gloppe",
                    purchaseDate: '2019.12.31',
                },
                {
                    receiptId: '2',
                    storeName: 'Komplett',
                    purchaseDate: '2019.12.29',
                },
                {
                    receiptId: '3',
                    storeName: 'Rema 1000 Øya',
                    purchaseDate: '2019.12.30',
                }
            ]
        }
    }

}
</script>