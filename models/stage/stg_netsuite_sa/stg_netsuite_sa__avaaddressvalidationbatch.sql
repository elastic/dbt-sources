
with source as (

    select * from {{ source('raw_netsuite_sa', 'avaaddressvalidationbatch') }}

),

renamed as (

    select
        avaaddressvalidationbatch_id,
        _fivetran_deleted,
        _fivetran_synced,
        avaaddressvalidationbatch_exti,
        avaaddressvalidationbatch_name,
        batch_progress,
        batch_status,
        customer_address_type,
        customer_name_starts_with,
        customer_sub_type,
        customer_type,
        date_created,
        date_deleted,
        description,
        end_date,
        include_sublocations,
        invalid_addresses,
        is_inactive,
        last_modified_date,
        last_processed_id,
        location_type,
        only_active_records,
        parent_id,
        record_type,
        start_date,
        subsidiary_address_type,
        total_addresses,
        valid_addresses

    from source

)

select * from renamed