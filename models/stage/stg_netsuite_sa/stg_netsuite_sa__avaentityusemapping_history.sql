
with source as (

    select * from {{ source('raw_netsuite_sa', 'avaentityusemapping_history') }}

),

renamed as (

    select
        avaentityusemapping_id,
        _fivetran_deleted,
        _fivetran_synced,
        address_id,
        avaentityusemapping_extid,
        customer_id,
        customer_id_0,
        date_created,
        date_deleted,
        entityuse_code_id,
        is_inactive,
        last_modified_date,
        parent_id,
        partition_date

    from source

)

select * from renamed
