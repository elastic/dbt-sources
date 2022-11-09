
with source as (

    select * from {{ source('raw_netsuite', 'contract_renewals_preferences') }}

),

renamed as (

    select
        contract_renewals_preferenc_ex,
        contract_renewals_preferenc_id,
        contract_renewals_preferenc_na,
        date_created,
        id_0,
        is_inactive,
        last_modified_date,
        listrecord_id,
        mandatory,
        module,
        parent_id,
        preference,
        type_id,
        value_0

    from source

)

select * from renamed
